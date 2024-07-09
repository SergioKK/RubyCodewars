require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice40-49.rb"

class MyTest < Minitest::Test
    def test_40_kata
        assert_equal(add_length('apple ban'), ["apple 5", "ban 3"])
        assert_equal(add_length('you will win'), ["you 3", "will 4", "win 3"])
        assert_equal(add_length('you'), ["you 3"])
        assert_equal(add_length('y'), ["y 1"])
    end
end