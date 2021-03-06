require 'delegate'

module Cucumber
  #┬áRepresents the current status of a running test case.
  # 
  # This wraps a `Cucumber::Core::Test::Case` and delegates
  # many methods to that object.
  #
  # We decorete the core object with the current result.
  # In the first Before hook of a scenario, this will be an
  # instance of `Cucumber::Core::Test::Result::Unknown`
  # but as the scenario runs, it will be updated to reflect
  # the passed / failed / undefined / skipped status of
  # the test case.
  #
  # The test case might come from a regular Scenario or
  # a Scenario outline. You can call the `#outline?`
  # predicate to find out. If it's from an outline, 
  # you get a couple of extra methods.
  module RunningTestCase
    def self.new(test_case)
      Builder.new(test_case).result
    end

    class Builder
      def initialize(test_case)
        @test_case = test_case
        test_case.describe_source_to(self)
      end

      def feature(feature)
      end

      def scenario(scenario)
        @factory = Scenario
      end

      def scenario_outline(scenario)
        @factory = ScenarioOutlineExample
      end

      def examples_table(examples_table)
      end

      def examples_table_row(row)
      end

      def result
        @factory.new(@test_case)
      end
    end
    private_constant :Builder

    class Scenario < SimpleDelegator
      def initialize(test_case, result = Core::Test::Result::Unknown.new)
        @test_case = test_case
        @result = result
        super test_case
      end

      def accept_hook?(hook)
        hook.tag_expressions.all? { |expression| @test_case.match_tags?(expression) }
      end

      def failed?
        @result.failed?
      end

      def passed?
        !failed?
      end

      def title
        warn("deprecated: call #name instead")
        name
      end

      def source_tags
        #warn('deprecated: call #tags instead')
        tags
      end

      def source_tag_names
        tags.map &:name
      end

      def skip_invoke!
        Cucumber.deprecate(self.class.name, __method__, "Call #skip_this_scenario on the World directly")
        raise Cucumber::Core::Test::Result::Skipped
      end

      def outline?
        false
      end

      def with_result(result)
        self.class.new(@test_case, result)
      end
    end

    class ScenarioOutlineExample < Scenario
      def outline?
        true
      end

      def scenario_outline
        self
      end

      def cell_values
        source.last.values
      end
    end
  end
end
