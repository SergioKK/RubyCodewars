require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice4.rb"

class MyTest < Minitest::Test
    def test_31_kata
        assert_equal(capitals('CodEWaRs'), [0,3,4,6])
        assert_equal(capitals('4ysdf4'), [])
        assert_equal(capitals('ABCDEF'), [0, 1, 2, 3, 4, 5])
    end

    def test_32_kata
        numbers = [1, 2, 3]
        remove_smallest(numbers)
        assert_equal(numbers, [1, 2, 3])

        assert_equal(remove_smallest([1, 2, 3, 4, 5]), [2, 3, 4, 5])
        assert_equal(remove_smallest([]), [])
        assert_equal(remove_smallest([2, 2, 1, 2, 1]), [2, 2, 2, 1])
    end
end
