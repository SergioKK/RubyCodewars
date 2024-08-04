require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice80-89.rb"


class MyTest < Minitest::Test

    def test_80_kata
      assert_equal(shortcut('hello'), 'hll')
      assert_equal(shortcut('codewars'), 'cdwrs')
      assert_equal(shortcut('goodbye'), 'gdby')
      assert_equal(shortcut('HELLO'), 'HELLO')
    end

    def test_81_kata
      assert_equal(sum_mix([9, 3, '7', '3']), 22)
      assert_equal(sum_mix(['5', '0', 9, 3, 2, 1, '9', 6, 7]), 42)
      assert_equal(sum_mix(['3', 6, 6, 0, '5', 8, 5, '6', 2,'0']), 41)
      assert_equal(sum_mix(['1', '5', '8', 8, 9, 9, 2, '3']), 45)
      assert_equal(sum_mix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]), 61)
    end

    def test_82_kata
      assert_equal(switch_it_up(1), "One")
      assert_equal(switch_it_up(7), "Seven")
    end

    def test_83_kata
      assert_equal(greet('riley'), 'Hello Riley!')
      assert_equal(greet('JACK'), 'Hello Jack!')
    end

    def test_84_kata
      assert_equal(vowel_indices("super"), [2,4], "failed on the word 'super'")
      assert_equal(vowel_indices("apple"), [1,5],  "failed on the word 'apple'")
      assert_equal(vowel_indices("123456"), [], "failed on the word '123456'")
    end

    def test_85_kata
      assert_equal(multiply(10), 250)
      assert_equal(multiply(5), 25)
      assert_equal(multiply(200), 25000)
      assert_equal(multiply(0), 0)
      assert_equal(multiply(-2), -10)
    end

    def test_86_kata
      assert_equal(sequence_sum(2, 6, 2), 12)
      assert_equal(sequence_sum(1, 5, 1), 15)
      assert_equal(sequence_sum(1, 5, 3), 5)
      assert_equal(sequence_sum(0, 15, 3), 45)
      assert_equal(sequence_sum(16, 15, 3), 0)
      assert_equal(sequence_sum(2, 24, 22), 26)
      assert_equal(sequence_sum(2, 2, 2), 2)
      assert_equal(sequence_sum(2, 2, 1), 2)
      assert_equal(sequence_sum(1, 15, 3), 35)
      assert_equal(sequence_sum(15, 1, 3), 0)
    end

    def test_87_kata
      assert_equal(find_longest([1, 10, 100, 102, 101]), 100)
      assert_equal(find_longest([9000, 8, 800]), 9000)
      assert_equal(find_longest([8, 900, 500]), 900)
      assert_equal(find_longest([3, 40000, 100]), 40000)
      assert_equal(find_longest([1, 200, 100000]), 100000)
    end
end
