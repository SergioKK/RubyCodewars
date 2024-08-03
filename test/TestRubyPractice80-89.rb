require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice80-89.rb"


class MyTest < Minitest::Test

    def test_80_kata
      assert_equal(shortcut('hello'), 'hll')
      assert_equal(shortcut('codewars'), 'cdwrs')
      assert_equal(shortcut('goodbye'), 'gdby')
      assert_equal(shortcut('HELLO'), 'HELLO')
    end
end
