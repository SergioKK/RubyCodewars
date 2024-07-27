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

    def test_63_kata
      assert_equal(two_sum([1, 2, 3], 4).sort, [0, 2])
      assert_equal(two_sum([1234, 5678, 9012], 14690).sort, [1, 2])
      assert_equal(two_sum([2, 2, 3], 4).sort, [0, 1])
    end

    def test_64_kata
      s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
      assert_equal(printer_error(s), "3/56")
      s = "kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
      assert_equal(printer_error(s), "6/60")
      s = "kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu"
      assert_equal(printer_error(s), "11/65")
    end

    def test_65_kata
      assert_equal(mango(3, 3), 6)
      assert_equal(mango(9, 5), 30)
      assert_equal(mango(0, 5), 0)
      assert_equal(mango(9, 0), 0)
      assert_equal(mango(7541, 424), 2131872)
    end

    def test_66_kata
      assert_equal(title_case(''), '')
      assert_equal(title_case('a clash of KINGS', 'a an the of'), 'A Clash of Kings')
      assert_equal(title_case('THE WIND IN THE WILLOWS', 'The In'), 'The Wind in the Willows')
      assert_equal(title_case('the quick brown fox'), 'The Quick Brown Fox')
    end

    def test_67_kata
      assert_equal(validate_usr('asddsa'), true)
      assert_equal(validate_usr('a'), false)
      assert_equal(validate_usr('Hass'), false)
      assert_equal(validate_usr('Hasd_12assssssasasasasasaasasasasas'), false)
      assert_equal(validate_usr(''), false)
      assert_equal(validate_usr('____'), true)
      assert_equal(validate_usr("gajcDrR7Vqhkolz4o"), false)
    end

    def test_67_kata
      assert_equal(words_to_marks("attitude"), 100)
      assert_equal(words_to_marks("friends"), 75)
      assert_equal(words_to_marks("family"), 66)
      assert_equal(words_to_marks("selfness"), 99)
      assert_equal(words_to_marks("knowledge"), 96)
      assert_equal(words_to_marks("incomprehensibility"), 225)
    end

    def test_67_kata
      assert_equal(usdcny(15), '101.25 Chinese Yuan')
      assert_equal(usdcny(465), '3138.75 Chinese Yuan')
    end
end
