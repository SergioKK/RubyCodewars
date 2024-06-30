require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice3.rb"

class MyTest < Minitest::Test
    def test_21_kata
        assert_equal([20, 8, 5, 19, 21, 14, 19, 5, 20, 19, 5, 20, 19, 1, 20, 20, 23, 5, 12, 22, 5, 15, 3, 12, 15, 3, 11], 
        alphabet_position("The sunset sets at twelve o' clock."))
    end

    def test_22_kata
        assert_equal(false, is_triangle(7,2,2))
    end

    def test_23_kata
        assert_equal(6, check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"]))
        assert_equal(3, check_exam(["a", "a", "c", "b"], ["", "a", "b",  ""]))
        assert_equal(0, check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"]))
    end

    def test_24_kata
        assert_equal(min_value([1, 3, 1]), 13)
        assert_equal(min_value([4, 7, 5, 7]), 457)
        assert_equal(min_value([4, 8, 1, 4]), 148)
    end

    def test_25_kata
        assert_equal(reverse_letter("krishan"),"nahsirk")
        assert_equal(reverse_letter("ultr53o?n"),"nortlu")
        assert_equal(reverse_letter("krish21an"),"nahsirk")
    end

    def test_26_kata
        assert_equal(wave("a       b    "), ["A       b    ", "a       B    "])
        assert_equal(wave(" gap "), [" Gap ", " gAp ", " gaP "])
        assert_equal(wave("hello"), ["Hello", "hEllo", "heLlo", "helLo", "hellO"])
    end
end
