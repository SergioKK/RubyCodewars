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

    def test_33_kata
        assert_equal(name_shuffler('john McClane'),'McClane john')
        assert_equal(name_shuffler('Mary jeggins'),'jeggins Mary')
        assert_equal(name_shuffler('tom jerry'),'jerry tom')
    end

    def test_34_kata
        s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
        s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
        assert_equal(mxdiflg(s1, s2), 13)
        s1 = ["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"]
        s2 = ["bbbaaayddqbbrrrv"]
        assert_equal(mxdiflg(s1, s2), 10)
        s1 = []
        s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
        assert_equal(mxdiflg(s1, s2), -1)
    end

    def test_35_kata
        assert_equal(small_enough([66, 101], 200), true)
        assert_equal(small_enough([78, 117, 110, 99, 104, 117, 107, 115], 100), false)
        assert_equal(small_enough([101, 45, 75, 105, 99, 107], 107), true)
        assert_equal(small_enough([80, 117, 115, 104, 45, 85, 112, 115], 120), true)
    end

    def test_36_kata
        assert_equal(say_hello(['John', 'Smith'], 'Phoenix', 'Arizona'), "Hello, John Smith! Welcome to Phoenix, Arizona!")
        assert_equal(say_hello(['John'], 'Phoenix', 'Arizona'), "Hello, John! Welcome to Phoenix, Arizona!")
    end

    def test_37_kata
        assert_equal(two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]), 'b***i***t***c***o***i***n')
        assert_equal(two_sort(["i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day"]), 'c***o***d***e')
    end

    def test_37_kata
        assert_equal(replace("Hi!") , "H!!")
        assert_equal(replace("aeiou") , "!!!!!")
        assert_equal(replace("ABCDE") , "!BCD!")
    end

    def test_38_kata
        assert_equal(find_uniq([1,1,1,1,0]), 0)
        assert_equal(find_uniq([ 1, 1, 1, 2, 1, 1 ]), 2)
        assert_equal(find_uniq([ 0, 0, 0.55, 0, 0 ]), 0.55)
    end

end
