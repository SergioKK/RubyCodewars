require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice60-69.rb"


class MyTest < Minitest::Test

    def test_60_kata
      assert_equal(
  comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]),
    true)
    end

    def test_61_kata
      assert_equal(correct("L0ND0N"),"LONDON")
      assert_equal(correct("DUBL1N"),"DUBLIN")
      assert_equal(correct("51NGAP0RE"),"SINGAPORE")
      assert_equal(correct("BUDAPE5T"),"BUDAPEST")
      assert_equal(correct("PAR15"),"PARIS")
    end

    def test_62_kata
      assert_equal(sum_of_minimums([[1, 2, 3, 4, 5], [5, 6, 7, 8, 9], [20, 21, 34, 56, 100] ]), 26) 
      assert_equal(sum_of_minimums([[7, 9, 8, 6, 2], [6, 3, 5, 4, 3], [5, 8, 7, 4, 5] ]), 9)
      assert_equal(sum_of_minimums([[11, 12, 14, 54], [67, 89, 90, 56], [7, 9, 4, 3], [9, 8, 6, 7] ]), 76)
    end
end
