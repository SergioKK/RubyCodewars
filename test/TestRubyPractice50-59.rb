require "minitest/autorun"
require_relative "/home/sergio/RubyCodewars/RubyPractice50-59.rb"


class MyTest < Minitest::Test

    def test_50_kata
      assert_equal(get_drink_by_profession("jabrOni"), "Patron Tequila")
      assert_equal(get_drink_by_profession("scHOOl counselor"), "Anything with Alcohol")
      assert_equal(get_drink_by_profession("prOgramMer"), "Hipster Craft Beer")
      assert_equal(get_drink_by_profession("bike ganG member"), "Moonshine")
      assert_equal(get_drink_by_profession("poLiTiCian"), "Your tax dollars")
      assert_equal(get_drink_by_profession("rapper"), "Cristal")
      assert_equal(get_drink_by_profession("pundit"), "Beer")
    end
end
