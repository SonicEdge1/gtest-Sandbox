## [v0.8.0.pre4](https://github.com/cucumber/aruba/compare/v0.8.0.pre4...v0.8.0.pre5)
* Build with cucumber 1.3.x on ruby 1.8.7, with cucumber 2.x on all other platforms
* Fixed bugs in aruba's cucumber steps
* Disable use of `win32/file`

## [v0.8.0.pre3](https://github.com/cucumber/aruba/compare/v0.8.0.pre2...v0.8.0.pre3)
* Depend on cucumber 1.3.x for compatibility on ruby 1.8.7
* Change PWD and OLDPW when `cd('path')` or `cd('path') {}` is used
* Make nesting of `cd` possible
* Make `run` inside `cd` possible
* Fixed some bugs
* Move `Aruba.proces = InProcess|SpawnProcess|DebugProcess` to `aruba.config`
* Deprecate direct use of `InProcess|SpawnProcess|DebugProcess`. Now `Command`
  needs to be used
* Add new configuration options `command_launcher` and `main_klass` for
  deprecation of old-style `Aruba.process = <class>`, `:spawn` is the default
  value for the `command_launcher`-option
* Added checks for version of `rspec-expectations` to support older `rspec`
  versions like `2.11`
* Now each `path/to/dir` pushed to `aruba.current_directory` is `pop`ed as whole
* Make testing of `aruba.current_directory` easier by supporting `end_with?` and `start_with?`

## [v0.8.0.pre2](https://github.com/cucumber/aruba/compare/v0.8.0...v0.8.0.pre2)
* Relax requirement on rspec-expectations (3.3 -> 2.11)

## [v0.8.0.pre](https://github.com/cucumber/aruba/compare/v0.7.4...v0.8.0.pre)
* Make aruba compatible with "ruby 1.8.7" and "ruby 1.9.3" again (fixes #279)
* Move more and more documentation to cucumber steps (partly fixes #268)
* Refactoring of test suits, now rspec tests run randomly
* Move Aruba constants to configuration class (fixes #271)
* Added runtime configuration via `aruba.config` which is reset for each test run
* Refactored hooks: now there are `after()` and `before()`-hooks, old
  before_cmd-hook is still working, but is deprecated, added new
  `after(:command)`-hook.
* Refactored jruby-startup helper
* Cleanup API by moving deprecated methods to separate class
* Cleanup Core API - reduced to `cd`, `expand_path`, `setup_aruba` and use expand_path wherever possible (fixes #253)
* Better isolation for environment variable manipulation - really helpful from 1.0.0 on
* Move configuration files like `jruby.rb` to `aruba/config/`-directory
* Change default exit timeout to 15 seconds to work around long running processes on travis

## [v0.7.4](https://github.com/cucumber/aruba/compare/v0.7.2...v0.7.4)
* Really Fixed post install message

## [v0.7.3](https://github.com/cucumber/aruba/compare/v0.7.2...v0.7.3)
* Fixed post install message

## [v0.7.2](https://github.com/cucumber/aruba/compare/v0.7.1...v0.7.2)
* Do not trigger Announcer API deprecation warning (issue #277)

## [v0.7.1](https://github.com/cucumber/aruba/compare/v0.7.0...v0.7.1)
* Do not break if @interactive is used 

## [v0.7.0](https://github.com/cucumber/aruba/compare/v0.6.2...v0.7.0)
* Introducing root_directory (issue #232)
* Introducing fixtures directory (issue #224)
* Make sure a file/directory does not exist + Cleanup named file/directory steps (issue #234)
* Make matcher have_permisions public and add documentation (issue #239)
* Added matcher for file content (issue #238)
* Add rspec integrator (issue #244)
* Deprecate _file/_directory in method names (issue #243)
* Improve development environment (issue #240)
* Cleanup process management (issue #257)
* Make path content available through matchers and api metchods (issue #250)
* Refactor announcer to support user defined announce channels (fixes #267)
* `InProcess` requires that the working directory is determined on runtime not no loadtime

## [v0.6.2](https://github.com/cucumber/aruba/compare/v0.6.1...v0.6.2)
* Fixed minor issue #223)
* Added support for ruby 2.1.3 -- 2.1.5
* Added support for comparison to a fixture file

## [v0.6.1](https://github.com/cucumber/aruba/compare/v0.6.0...v0.6.1)
* Added support for ruby 2.1.2
* Added support for ~ expansion
* Added support for with_env

## [v0.6.0](https://github.com/cucumber/aruba/compare/v0.5.4...v0.6.0)
* Dropped support for ruby 1.8
* Added support for ruby 2.1.0 and 2.1.1
* Added rspec 3.0.0 support

## [v0.5.4](https://github.com/cucumber/aruba/compare/v0.5.3...v0.5.4)
* Added support for piping in files (#154 maxmeyer, dg-vrnetze)
* Added cucumber steps for environment variables (#156 dg-vrnetze)
* Added support for file mode (#157 maxmeyer, dg-vrnetze)

## [v0.5.3](https://github.com/cucumber/aruba/compare/v0.5.2...v0.5.3)
* Fix for UTF-8 support (#151 Matt Wynne, Jarl Friis)
* Fix for open file leakage (#150 @JonRowe)

## [v0.5.2](https://github.com/cucumber/aruba/compare/v0.5.1...v0.5.2)

* Plugin API for greater speed. Test Ruby CLI programs in a single Ruby process (#148 Aslak Helles??y)
* Fix memory leak when several commands are executed in a single run (#144 @y-higuchi)

## [v0.5.1](https://github.com/cucumber/aruba/compare/v0.5.0...v0.5.1)
* Individual timeout settings when running commands (#124 Jarl Friis)
* Varous fixes for JRuby tests, should now work on more versions of JRuby

## [v0.5.0](https://github.com/cucumber/aruba/compare/v0.4.10...v0.5.0)
* Add #with_file_content to the DSL (#110 Pavel Argentov)
* Make JRuby performance tweaks optional (#102 Taylor Carpenter, #125 Andy Lindeman)
* Add assert_partial_output_interactive so you can peek at the output from a running process (#104 Taylor Carpenter)
* Add assert_not_matching_output (#111 Pavel Argentov)
* Add remove_dir (#121 Piotr Nie??acny)

## [v0.4.11](https://github.com/cucumber/aruba/compare/v0.4.10...v0.4.11)
* Fix duplicated output (#91 Robert Wahler, Matt Wynne)
* Fix Gemspec format (#101 Matt Wynne)

## [v0.4.10](https://github.com/cucumber/aruba/compare/v0.4.9...v0.4.10)
* Fix broken JRuby file following rename of hook (Thomas Reynolds)
* Add terminate method to API (Taylor Carpenter)

## [v0.4.9](https://github.com/cucumber/aruba/compare/v0.4.8...v0.4.9)
* Rename before_run hook to before_cmd (Matt Wynne)
* Fix 1.8.7 compatibility (#95 Dave Copeland)

## [v0.4.8](https://github.com/cucumber/aruba/compare/v0.4.7...v0.4.8)

* Add before_run hook (Matt Wynne)
* Add JRuby performance tweaks (#93 Myron Marston / Matt Wynne)
* Invalid/Corrupt spec file for 0.4.7 - undefined method call for nil:Nilclass (#47 Aslak Helles??y)

## [v0.4.7](https://github.com/cucumber/aruba/compare/v0.4.6...v0.4.7)

* Remove rdiscount dependency. (#85 Aslak Helles??y)
* Pin to ffi 1.0.9 since 1.0.10 is broken. (Aslak Helles??y)
* Added file size specific steps to the Aruba API. (#89 Hector Castro)

## [v0.4.6](https://github.com/cucumber/aruba/compare/v0.4.5...v0.4.6)

* Upgraded deps to latest gems. (Aslak Helles??y)
* Added Regexp support to Aruba::Api#assert_no_partial_output  (Aslak Helles??y)

## [v0.4.5](https://github.com/cucumber/aruba/compare/v0.4.4...v0.4.5)

* Better assertion failure message when an exit code is not as expected. (Matt Wynne)

## [v0.4.4](https://github.com/cucumber/aruba/compare/v0.4.3...v0.4.4)

* Fix various bugs with interative processes. (Matt Wynne)

## [v0.4.3](https://github.com/cucumber/aruba/compare/v0.4.2...v0.4.3)

* Aruba reporting now creates an index file for reports, linking them all together. (Aslak Helles??y)

## [v0.4.2](https://github.com/cucumber/aruba/compare/v0.4.1...v0.4.2)

* Appending to a file creates the parent directory if it doesn't exist. (Aslak Helles??y)

## [v0.4.1](https://github.com/cucumber/aruba/compare/v0.4.0...v0.4.1)

* Move more logic into Aruba::Api (Aslak Helles??y)

## [v0.4.0](https://github.com/cucumber/aruba/compare/v0.3.7...v0.4.0)

* New, awesome HTML reporting feature that captures everything that happens during a scenario. (Aslak Helles??y)
* ANSI escapes from output are stripped by default. Override this with the @ansi tag. (Aslak Helles??y)

## [v0.3.7](https://github.com/cucumber/aruba/compare/v0.3.6...v0.3.7)

* Make Aruba::Api#get_process return the last executed process with passed cmd (Potapov Sergey)
* Replace announce with puts to comply with cucumber 0.10.6 (Aslak Helles??y)
* Fix childprocess STDIN to be synchronous (#40, #71 Tim Ekl)

## [v0.3.6](https://github.com/cucumber/aruba/compare/v0.3.5...v0.3.6)

* Changed default value of @aruba_timeout_seconds from 1 to 3. (Aslak Helles??y)
* Separate hooks and steps to make it easier to build your own steps on top of Aruba's API (Mike Sassak)
* @no-clobber to prevent cleanup before each scenario (Mike Sassak)

## [v0.3.5](https://github.com/cucumber/aruba/compare/v0.3.4...v0.3.5)

* Store processes in an array to ensure order of operations on Ruby 1.8.x (#48 Mike Sassak)

## [v0.3.4](https://github.com/cucumber/aruba/compare/v0.3.3...v0.3.4)

* Use backticks (\`) instead of quotes (") to specify command line. Quote still works, but is deprecated. (Anthony Eden, Aslak Helles??y)

## [v0.3.3](https://github.com/cucumber/aruba/compare/v0.3.2...v0.3.3)

* Updated RSpec development requirement to 2.5 (Robert Speicher, Mike Sassak, Aslak Helles??y)
* Updated RubyGems dependency to 1.6.1 (Robert Speicher)

## [v0.3.2](https://github.com/cucumber/aruba/compare/v0.3.1...v0.3.2)

* Wrong number of args in the When I overwrite step (Aslak Helles??y)

## [v0.3.1](https://github.com/cucumber/aruba/compare/v0.3.0...v0.3.1)

* Broken 0.3.0 release (#43, #44 Mike Sassak)
* Quotes (") and newline (\n) in step arguments are no longer unescaped. (Aslak Helles??y)

## [v0.3.0](https://github.com/cucumber/aruba/compare/v0.2.8...v0.3.0)

* Remove latency introduced in the 0.2.8 release (#42 Mike Sassak)
* New stepdef Then /^the stdout should contain:$/ do |partial_output| (Aslak Helles??y)
* Quotes (") and newline (\n) in step arguments no longer need to be backslash-escaped. (Aslak Helles??y)

## [v0.2.8](https://github.com/cucumber/aruba/compare/v0.2.7...v0.2.8)

* Replaced background_process with childprocess, a cross-platform process control library. This will allow Aruba to run on Windows and JRuby in addition to *nix MRI. (#16, #27, #31 Mike Sassak, Jari Bakken, Matt Wynne, Arve Knudsen)

## [v0.2.7](https://github.com/cucumber/aruba/compare/v0.2.6...v0.2.7)

* Upgrade to Cucumber 0.10.0. (Aslak Helles??y)
* require 'aruba' does nothing - you have to require 'aruba/cucumber' now. This is to prevent bundler from loading it when we don't want to. (Aslak Helles??y)
* Outputting a lot of data causes process to time out (#30 Mike Sassak)

## [v0.2.6](https://github.com/cucumber/aruba/compare/v0.2.5...v0.2.6)

* You can set @aruba_timeout_seconds in a Before hook to tell Aruba to wait for a process to complete. Default: 1 second. (Aslak Helles??y)
* Fixed small bug in /^the stdout should contain exactly:$/ (Aslak Helles??y)

## [v0.2.5](https://github.com/cucumber/aruba/compare/v0.2.4...v0.2.5)

* Added 'a file named "whatever" should (not) exist' (Robert Speicher)
* Added 'a directory named "whatever" should (not) exist' (Robert Speicher)
* Added /^the stderr should contain exactly:"$/ (Aslak Helles??y)
* Added /^the stdout should contain exactly:"$/ (Aslak Helles??y)
* Added /it should pass with exactly:/ (Aslak Helles??y)
* @announce, @announce-dir and @announce-cmd for interactive processes (Mike Sassak)
* Add step defs for detecting output, stdout and stderr by process name (Mike Sassak)
* Stop all processes before verifying filesystem changes to ensure async operations are complete (#17 Mike Sassak)
* Outputting large amounts of data causes run steps to hang (#18 Mike Sassak)

## [v0.2.4](https://github.com/cucumber/aruba/compare/v0.2.3...v0.2.4)

* Added step definitions for removing files and checking presence of a single file. (Aslak Helles??y)

## [v0.2.3](https://github.com/cucumber/aruba/compare/v0.2.2...v0.2.3)

* Directory should not exist gives false-positive (#13,#15 Nicholas Rutherford)
* Added step definitions for comparing file contents with regexps (#9 Aslak Helles??y)
* Always put ./bin at the beginning of $PATH to make it easier to run own executables (#7 Aslak Helles??y)
* Communication with interactive processes (#4 Mike Sassak)
* Remove hyphens separating stdout and stderr (Arve Knudsen)

## [v0.2.2](https://github.com/cucumber/aruba/compare/v0.2.1...v0.2.2)

* Added a @bin tag that sets up './bin' first on the path (Aslak Helles??y)
* Richer API making aruba easier to use from Ruby code. (Mark Nijhof, Aslak Helles??y)
* No more support for RVM. Use rvm 1.9.2,1.8.7 exec cucumber .... instead. (Mark Nijhof, Aslak Helles??y)

## [v0.2.1](https://github.com/cucumber/aruba/compare/v0.2.0...v0.2.1)

* Always compare with RSpec should =~ instead of should match. This gives a diff when there is no match. (Aslak Helles??y)

## [v0.2.0](https://github.com/cucumber/aruba/compare/v0.1.9...v0.2.0)

* Added aruba.gemspec. (David Chelimsky)
* Several step definitions regarding output have changed. (#1 Aslak Helles??y)

    - /^I should see "([^\"]*)"$/
    + /^the output should contain "([^"]*)"$/

    - /^I should not see "([^\"]*)"$/
    + /^the output should not contain "([^"]*)"$/

    - /^I should see:$/
    + /^the output should contain:$/

    - /^I should not see:$/
    + /^the output should not contain:$/

    - /^I should see exactly "([^\"]*)"$/
    + /^the output should contain exactly "([^"]*)"$/

    - /^I should see exactly:$/
    + /^the output should contain exactly:$/

    - /^I should see matching \/([^\/]*)\/$/
    + /^the output should match \/([^\/]*)\/$/

    - /^I should see matching:$/
    + /^the output should match:$/

## [v0.1.9](https://github.com/cucumber/aruba/compare/v0.1.8...v0.1.9)

* If the GOTGEMS environment variable is set, bundler won't run (faster). (Aslak Helles??y)

## [v0.1.8](https://github.com/cucumber/aruba/compare/v0.1.7...v0.1.8)

* Use // instead of "" for "I should see matching" step. (Aslak Helles??y)
* Replace rvm gemset character '%' with '@' for rvm 0.1.24 (#5 Ashley Moran)
* Support gem bundler, making it easier to specify gems. (Aslak Helles??y)

## [v0.1.7](https://github.com/cucumber/aruba/compare/v0.1.6...v0.1.7)

* New @announce-stderr tag (Robert Wahler)
* New "I should see matching" steps using Regexp (Robert Wahler)

## [v0.1.6](https://github.com/cucumber/aruba/compare/v0.1.5...v0.1.6)

* When /^I successfully run "(.*)"$/ now prints the combined output if exit status is not 0. (Aslak Helles??y)
* Add bundle to list of common ruby scripts. (Aslak Helles??y)

## [v0.1.5](https://github.com/cucumber/aruba/compare/v0.1.4...v0.1.5)

* Added ability to map rvm versions to a specific version with config/aruba-rvm.yml. (Aslak Helles??y)
* Check for presence of files. (Aslak Helles??y)
* Allow specification of rvm gemsets. (Aslak Helles??y)
* Detect ruby commands and use current ruby when rvm is not explicitly used. (Aslak Helles??y)
* Added support for rvm, making it possible to choose Ruby interpreter. (Aslak Helles??y)
* Added @announce-cmd, @announce-stdout and @announce tags, useful for seeing what's executed and outputted. (Aslak Helles??y)

## [v0.1.4](https://github.com/cucumber/aruba/compare/v0.1.3...v0.1.4)

* New step definition for appending to a file (Aslak Helles??y)

## [v0.1.3](https://github.com/cucumber/aruba/compare/v0.1.2...v0.1.3)

* New step definition for cd (change directory) (Aslak Helles??y)

## [v0.1.2](https://github.com/cucumber/aruba/compare/v0.1.1...v0.1.2)

* Separated API from Cucumber step definitions, makes this usable without Cucumber. (Aslak Helles??y)

## [v0.1.1](https://github.com/cucumber/aruba/compare/v0.1.0...v0.1.1)

* Better Regexp escaping (David Chelimsky)

## [v0.1.0](https://github.com/cucumber/aruba/compare/ed6a175d23aaff62dbf355706996f276f304ae8b...v0.1.1)

* First release (David Chelimsky and Aslak Helles??y)
