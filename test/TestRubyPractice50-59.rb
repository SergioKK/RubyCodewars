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

    def test_51_kata
      assert_equal(get_grade(95, 90, 93), "A")
      assert_equal(get_grade(80, 85, 96), "B")
      assert_equal(get_grade(92, 93, 94), "A")
    end

    def test_52_kata
      assert_equal(repeat_str(3, "*"),"***")
      assert_equal(repeat_str(5, "#"),"#####")
      assert_equal(repeat_str(2, "ha "),"ha ha ")
    end

    def test_53_kata
      assert_equal(["i", "to", "beg", "life"], sort_by_length(["beg", "life", "i", "to"]))
      assert_equal(["", "pizza", "brains", "moderately"], sort_by_length(["", "moderately", "brains", "pizza"]))
      assert_equal(["a", "of", "dog", "food"], sort_by_length(["dog", "food", "a", "of"]))
    end
end
