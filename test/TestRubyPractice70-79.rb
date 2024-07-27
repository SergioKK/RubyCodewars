require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice70-79.rb"


class MyTest < Minitest::Test

    def test_70_kata
      assert_equal(even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3), [4, 6, 8])
      assert_equal(even_numbers([-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2), [-8, 26])
      assert_equal(even_numbers([6, -25, 3, 7, 5, 5, 7, -3, 23], 1), [6])
    end

end
