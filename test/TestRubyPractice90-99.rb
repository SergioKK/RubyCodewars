require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice90-99.rb"


class MyTest < Minitest::Test

  def test_90_kata
    assert_equal(likes([]), 'no one likes this')
    assert_equal(likes(['Peter']), 'Peter likes this')
    assert_equal(likes(['Jacob', 'Alex']), 'Jacob and Alex like this')
    assert_equal(likes(['Max', 'John', 'Mark']), 'Max, John and Mark like this')
    assert_equal(likes(['Alex', 'Jacob', 'Mark', 'Max']), 'Alex, Jacob and 2 others like this')
  end

  def test_91_kata
    assert_equal("c".is_upcase?, false)
    assert_equal("C".is_upcase?, true)
    assert_equal("hello I AM DONALD".is_upcase?, false)
    assert_equal("HELLO I AM DONALD".is_upcase?, true)
    assert_equal("ACSKLDFJSgSKLDFJSKLDFJ".is_upcase?, false)
    assert_equal("ACSKLDFJSGSKLDFJSKLDFJ".is_upcase?, true)
  end

end
