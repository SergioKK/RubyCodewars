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
end
