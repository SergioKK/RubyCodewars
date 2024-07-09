require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice20-29.rb"

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

    def test_27_kata
        proc1 = proc { |x| x + 1}
        proc2 = proc { |x| x * 2}

        assert_equal(12, apply_blocks(5, [proc1, proc2]))
        assert_equal(11, apply_blocks(5, [proc2, proc1])) 
    end

    def test_28_kata
        assert_equal(nb_year(1500, 5, 100, 5000), 15)
        assert_equal(nb_year(1500000, 2.5, 10000, 2000000), 10)
        assert_equal(nb_year(1500000, 0.25, 1000, 2000000), 94)
    end
    
    def test_29_kata
        assert_equal(check([78, 117, 110, 99, 104, 117, 107, 115], 8), false)
        assert_equal(check([101, 45, 75, 105, 99, 107], 107), true)
        assert_equal(check(["t", "e", "s", "t"], "e"), true)
    end

    def test_30_kata
        assert_equal(count_chars("aba"), {"a" => 2, "b" => 1})
        assert_equal(count_chars("abba"), {"a" => 2, "b" => 2})
        assert_equal(count_chars(""), {})
    end

end
