# The Minitest runner is activated when you `require minitest/autorun`` in
# your code. It's responsible for loading the Ruby code needed to run
# Minitest and kicking off the test run with the Minitest.autorun method.
require 'minitest/autorun'
require 'support/fizz_buzz_helpers'
require 'support/fizz_buzzable'
require 'support/fizzing_buzzing_tests'

module Minitest
  class Test
    def self.behaves_like(_module)
      include _module
    end
  end
end