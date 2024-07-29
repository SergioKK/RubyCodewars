require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice70-79.rb"


class MyTest < Minitest::Test

    def test_70_kata
      assert_equal(even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3), [4, 6, 8])
      assert_equal(even_numbers([-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2), [-8, 26])
      assert_equal(even_numbers([6, -25, 3, 7, 5, 5, 7, -3, 23], 1), [6])
    end

    def test_71_kata
      assert_equal(solve("code"),"code")
      assert_equal(solve("CODe"),"CODE")
      assert_equal(solve("COde"),"code")
      assert_equal(solve("Code"),"code")
    end

    def test_72_kata
      assert_equal(multiple_of_index([22, -6, 32, 82, 9, 25]), [-6, 32, 25])
      assert_equal(multiple_of_index([68, -1, 1, -7, 10, 10]), [-1, 10])
      assert_equal(multiple_of_index([11, -11]), [-11])
      assert_equal(multiple_of_index([-56,-85,72,-26,-14,76,-27,72,35,-21,-67,87,0,21,59,27,-92,68]), [-85, 72, 0, 68])
      assert_equal(multiple_of_index([28,38,-44,-99,-13,-54,77,-51]), [38, -44, -99])
      assert_equal(multiple_of_index([-1,-49,-1,67,8,-60,39,35]), [-49, 8, -60, 35])
    end

    def test_73_kata
      assert_equal(adjacent_element_product([5, 8]), 40)
      assert_equal(adjacent_element_product([5, 1, 1, 8]), 8)
      assert_equal(adjacent_element_product([1, 2, 3]), 6)
      assert_equal(adjacent_element_product([1, 5, 10, 9]), 90)
      assert_equal(adjacent_element_product([4, 12, 3, 1, 5]), 48)
    end

    def test_74_kata
      assert_equal(same_case("C", "B"), 1)
      assert_equal(same_case("b", "a"), 1)
      assert_equal(same_case("d", "d"), 1)
      assert_equal(same_case("A", "s"), 0)
      assert_equal(same_case("c", "B"), 0)
      assert_equal(same_case("b", "Z"), 0)
      assert_equal(same_case("\n", "Z"), -1)
    end

    def test_75_kata
      assert_equal(revrot("1234", 0), "")
      assert_equal(revrot("", 0), "")
      assert_equal(revrot("1234", 5), "")
      assert_equal(revrot("733049910872815764", 5), "330479108928157")
    end

    def test_76_kata
      assert_equal(queue_time([], 1), 0, "wrong answer for case with an empty queue")
      assert_equal(queue_time([5], 1), 5, "wrong answer for a single person in the queue")
      assert_equal(queue_time([2], 5), 2, "wrong answer for a single person in the queue")
      assert_equal(queue_time([1,2,3,4,5], 1), 15, "wrong answer for a single till")
      assert_equal(queue_time([1,2,3,4,5], 100), 5, "wrong answer for a case with a large number of tills")
      assert_equal(queue_time([2,2,3,3,4,4], 2), 9, "wrong answer for a case with two tills")
    end

    def test_77_kata
        assert_equal(sum_cubes(1), 1)
        assert_equal(sum_cubes(2), 9)
        assert_equal(sum_cubes(3), 36)
        assert_equal(sum_cubes(4), 100)
        assert_equal(sum_cubes(10), 3025)
        assert_equal(sum_cubes(123), 58155876)
    end

    def test_78_kata
      assert_equal(largest_pair_sum([10,14,2,23,19]), 42)
      assert_equal(largest_pair_sum([-100,-29,-24,-19,19]), 0)
      assert_equal(largest_pair_sum([1,2,3,4,6,-1,2]), 10)
      assert_equal(largest_pair_sum([-10, -8, -16, -18, -19]), -18)
    end

end
