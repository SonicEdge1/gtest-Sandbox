# -*- encoding: utf-8 -*-
# stub: aruba 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "aruba"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Aslak Helles\u{f8}y", "David Chelimsky", "Mike Sassak", "Matt Wynne", "Jarl Friis", "Dennis G\u{fc}nnewig"]
  s.date = "2015-07-13"
  s.description = "Extension for popular TDD and BDD frameworks like \"Cucumber\" and \"RSpec\" to make testing commandline applications meaningful, easy and fun."
  s.email = "cukes@googlegroups.com"
  s.homepage = "http://github.com/cucumber/aruba"
  s.licenses = ["MIT"]
  s.post_install_message = "Use on ruby 1.8.7\n* Make sure you add something like that to your `Gemfile`. Otherwise you will\n  get cucumber > 2 and this will fail on ruby 1.8.7\n\n  gem 'cucumber', ~> '1.3.20'\n\nWith aruba >= 1.0\n  * \"ruby 1.8.7\"-support is discontinued.\n  * aruba requires \"cucumber 2\" for the feature steps. The rest of aruba should\n    be usable by whatever testing framework you are using.\n  * Overwriting methods for configuration is discontinued. You need to use\n    `aruba.config.<variable>` or `Aruba.configure { |config| config.<variable>`\n    instead.\n  * \"aruba/reporting\" will be removed. Please use `@debug`-tag + `byebug`,\n    `debugger`, `pry` to troubleshoot your feature tests.\n  * Set environment variables will have only effect on `#run` and the like +\n    `#with_environment { }`.\n  * The process environment will be fully resetted between tests. Sharing state\n    via ENV['VAR'] = 'shared state' between tests will not be possible anymore.\n    Please make that obvious by using explicit steps or use the aruba API for\n    that.\n  * There will be a major cleanup for command execution. There will be only\n    `run` and `run_simple` left. `run_interactive` is replaced by `run`.\n  * Setting the root directory of aruba via method overwrite or configuration -\n    this should be your project root directory where the test suite is run.\n  * The direct use of \"InProcess\", \"DebugProcess\" and \"SpawnProcess\" is not\n    supported anymore. You need to use \"Command\" instead. But be careful, it has\n    a different API.\n"
  s.rdoc_options = ["--charset=UTF-8"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.5.2.1"
  s.summary = "aruba-0.8.0"

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, [">= 1.3.19"])
      s.add_runtime_dependency(%q<childprocess>, ["~> 0.5.6"])
      s.add_runtime_dependency(%q<rspec-expectations>, [">= 2.99"])
      s.add_runtime_dependency(%q<contracts>, ["~> 0.9"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10.2"])
    else
      s.add_dependency(%q<cucumber>, [">= 1.3.19"])
      s.add_dependency(%q<childprocess>, ["~> 0.5.6"])
      s.add_dependency(%q<rspec-expectations>, [">= 2.99"])
      s.add_dependency(%q<contracts>, ["~> 0.9"])
      s.add_dependency(%q<bundler>, ["~> 1.10.2"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 1.3.19"])
    s.add_dependency(%q<childprocess>, ["~> 0.5.6"])
    s.add_dependency(%q<rspec-expectations>, [">= 2.99"])
    s.add_dependency(%q<contracts>, ["~> 0.9"])
    s.add_dependency(%q<bundler>, ["~> 1.10.2"])
  end
end
