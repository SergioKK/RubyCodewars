require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice10-19.rb"

class MyTest < Minitest::Test
  def test_10_kata_difference_of_the_cuboids
    assert_equal(no_boring_zeros(1000), 1)
    assert_equal(no_boring_zeros(145000), 145)
  end

  def test_11_kata_difference_of_the_cuboids
    assert_equal(14, find_difference([3, 2, 5], [1, 4, 4]))
    assert_equal(106, find_difference([9, 7, 2], [5, 2, 2]))
  end

  def test_12_kata
    assert_equal("even", odd_or_even([0]))
    assert_equal("odd", odd_or_even([1]))
    assert_equal("even", odd_or_even([-1023, 1, -2]))
  end

  def test_13_kata
    assert_equal(1, quarter_of(1)) 
    assert_equal(2, quarter_of(4)) 
    assert_equal(2, quarter_of(5)) 
    assert_equal(3, quarter_of(7)) 
  end

  def test_14_kata
    assert_equal(["1: a", "2: b", "3: c"], number(["a", "b", "c"]))
    assert_equal(["1: ", "2: ", "3: ", "4: ", "5: "], number([nil, nil, nil, nil, nil]))
  end

  def test_15_kata
    assert_equal(3, find_short("bitcoin two take over the world maybe who knows perhaps"))
    assert_equal(3, find_short("turns out random test cases are easier than writing out basic ones"))
  end

  def test_16_kata
    assert_equal("S.H", abbrev_name("Sam Harris"))
    assert_equal("S.G", abbrev_name("sam garris"))
  end

  def test_17_kata
    assert_equal(3, arithmetic(1, 2, "add"))
    assert_equal(6, arithmetic(8, 2, "subtract"))
    assert_equal(4, arithmetic(8, 2, "divide"))
  end

  def test_18_kata
    assert_equal("Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu", accum("ZpglnRxqenU"))
  end

  def test_19_kata_encrypt
    assert_equal("hsi  etTi sats!", encrypt("This is a test!", 1))
    assert_equal("s eT ashi tist!", encrypt("This is a test!", 2))
  end

  def test_19_kata_decrypt
    assert_equal("This is a test!", decrypt("hsi  etTi sats!", 1))
    assert_equal("This is a test!", decrypt("s eT ashi tist!", 2))
  end
end
