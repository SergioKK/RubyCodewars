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
end
