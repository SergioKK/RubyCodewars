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

    def test_54_kata
      assert_equal(round_to_next_5(5), 5)
      assert_equal(round_to_next_5(6), 10)
      assert_equal(round_to_next_5(12), 15)
      assert_equal(round_to_next_5(9), 10)
      assert_equal(round_to_next_5(16), 20)
    end

    def test_55_kata
      assert_equal(array('1,2,3'), '2')
      assert_equal(array('1,2,3,4'), '2 3')
      assert_equal(array('1,2,3,4,5'), '2 3 4')
    end

    def test_56_kata
      assert_equal(encrypt_this("hello world"), "104olle 119drlo")
      assert_equal(encrypt_this("A wise old owl lived in an oak"), "65 119esi 111dl 111lw 108dvei 105n 97n 111ka")
      assert_equal(encrypt_this("Thank you Piotr for all your help"), "84kanh 121uo 80roti 102ro 97ll 121ruo 104ple")
    end

    def test_57_kata
      assert_equal(str_count('Hello', 'o'), 1)
      assert_equal(str_count('Hello', 'l'), 2)
      assert_equal(str_count('', 'z'), 0)
    end

    def test_58_kata
      assert_equal(what_day?(1), 'Sunday')
      assert_equal(what_day?(2), 'Monday')
      assert_equal(what_day?(3), 'Tuesday')
      assert_equal(what_day?(8), 'Wrong, please enter a number between 1 and 7')
      assert_equal(what_day?(20), 'Wrong, please enter a number between 1 and 7')
    end
end
