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

    def test_42_kata
        assert_equal(solution([1, 2, 3, 10, 5]), [1, 2, 3, 5, 10])
        assert_equal(solution(nil), [])
        assert_equal(solution([]), [])
        assert_equal(solution([20, 2, 10]), [2, 10, 20])
    end

    def test_43_kata
        assert_equal(multiplication_table(3), [[1,2,3],[2,4,6],[3,6,9]])
    end

    def test_44_kata
        assert_equal(friend(["Ryan", "Kieran", "Mark"]), ["Ryan", "Mark"])
        assert_equal(friend(["Ryan", "Jimmy", "123", "4", "Cool Man"]), ["Ryan"])
        assert_equal(friend(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"]), ["Jimm", "Cari", "aret"])
        assert_equal(friend(["Love", "Your", "Face", "1"]), ["Love", "Your", "Face"])
    end

    def test_45_kata
        assert_equal(row_weights([80]), [80,0])
        assert_equal(row_weights([100,50]), [100,50])
        assert_equal(row_weights([50,60,70,80]), [120,140])
        assert_equal(row_weights([13,27,49]), [62,27])
    end

    def test_46_kata
        assert_equal("hello world".to_alternating_case(), "HELLO WORLD")
        assert_equal("HELLO WORLD".to_alternating_case(), "hello world")
        assert_equal("hello WORLD".to_alternating_case(), "HELLO world")
    end

    def test_47_kata
        assert_equal(factorial(0), 1)
        assert_equal(factorial(1), 1)
        assert_equal(factorial(4), 24)
        assert_equal(factorial(7), 5040)
    end
end
