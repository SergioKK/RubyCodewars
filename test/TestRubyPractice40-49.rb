require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice40-49.rb"

class MyTest < Minitest::Test
    def test_40_kata
        assert_equal(add_length('apple ban'), ["apple 5", "ban 3"])
        assert_equal(add_length('you will win'), ["you 3", "will 4", "win 3"])
        assert_equal(add_length('you'), ["you 3"])
        assert_equal(add_length('y'), ["y 1"])
    end

    def test_41_kata
        assert_equal(flatten_and_sort([[], [], [], [2], [], [1]]), [1, 2])
        assert_equal(flatten_and_sort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
        assert_equal(flatten_and_sort([[1, 3, 5], [100], [2, 4, 6]]), [1, 2, 3, 4, 5, 6, 100])
    end
end