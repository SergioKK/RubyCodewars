# 1 kata
def paperwork(n, m)
    [m, n].any? { |elem| elem < 0 } ? 0 : m * n
end

# puts paperwork(-5,5)
# puts paperwork(5,-5)
# puts paperwork(5,5)

# 2 kata
=begin 

After a hard quarter in the office you decide to get some rest on a vacation. 
So you will book a flight for you and your girlfriend and try to leave all the mess behind you.
You will need a rental car in order for you to get around in your vacation. 
The manager of the car rental makes you some good offers.
Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. 
Alternatively, if you rent the car for 3 or more days, you get $20 off your total.
Write a code that gives out the total amount for different days(d). 

=end

def rental_car_cost(d)
    amount = d*40

    if d >= 7
        amount -= 50
    elsif d >= 3
        amount -= 20
    end

    amount
end

# puts rental_car_cost(1)
# puts rental_car_cost(2)
# puts rental_car_cost(3)
# puts rental_car_cost(7)
# puts rental_car_cost(8)
# puts rental_car_cost(98)


# 3 kata
=begin

You are given an odd-length array of integers, in which all of them are the same, except for one single number.

Complete the method which accepts such an array, and returns that single different number.

The input array will always be valid! (odd-length >= 3)

=end

def stray (numbers)
    numbers.each { |number| if numbers.count(number) == 1 then return number end }
end

# puts stray([1, 1, 2])
# puts stray([17, 17, 3, 17, 17, 17, 17])


# 4 kata
# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

def filter_list(list)
    list.select { |number| number.is_a?(Integer)}
end

# puts filter_list([1,2,'a','b'])

# 5 kata

=begin
Write function bmi that calculates body mass index (bmi = weight / height2).

if bmi <= 18.5 return "Underweight"

if bmi <= 25.0 return "Normal"

if bmi <= 30.0 return "Overweight"

if bmi > 30 return "Obese"
=end

def bmi(weight, height)
    return "Underweight" if weight/height**2 <= 18.5
    return "Normal" if weight/height**2 <= 25.0
    return "Overweight" if weight/height**2 <= 30.0
    "Obese"
end

# puts bmi(50, 1.80)
# puts bmi(80, 1.80)

# 6 kata
# As a part of this Kata, you need to create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.

def gimme(input_array)
    input_array.find_index(input_array.sort[1])
end

# puts gimme([3, 25, 1])
# puts gimme([-0.410, -23, 4])

# 7 kata

=begin
Write a function that checks if a given string (case insensitive) is a palindrome.
A palindrome is a word, number, phrase, or other sequence of symbols that reads the same backwards as forwards, such as madam or racecar.
=end

def is_palindrome str
    str.downcase == str.downcase.reverse
end

# puts is_palindrome("Abba")
# puts is_palindrome("hello")

=begin
The wide-mouth frog is particularly interested in the eating habits of other creatures.

He just can't stop asking the creatures he encounters what they like to eat. But, then he meets the alligator who just LOVES to eat wide-mouthed frogs!

When he meets the alligator, it then makes a tiny mouth.

Your goal in this kata is to create complete the mouth_size method this method takes one argument animal which corresponds to the animal encountered by the frog. 
If this one is an alligator (case-insensitive) return small otherwise return wide.
=end

def mouth_size(animal)
    animal.downcase == "alligator" ? "small" : "wide"
end

# puts mouth_size("toucan")
# puts mouth_size("alligator")

# 8 kata
=begin
Your task is to find the first element of an array that is not consecutive.

By not consecutive we mean not exactly 1 larger than the previous element of the array.

E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.
=end

def first_non_consecutive(arr)
    i = 1
    while i < arr.length
        return arr[i] if arr[i] - arr[i-1] != 1
        i += 1
    end
    return nil
end

#best practice
def first_non_consecutive(arr)
    arr.each_index do |i|
      return arr[i + 1] if arr[i].next != arr[i + 1]
    end
end

# puts first_non_consecutive([1,2,3,4,6,7,8])
# puts first_non_consecutive([1,2,3,4,5,6,7,8,11])
# puts first_non_consecutive([1,2,3,4,5,6,7,8])
# puts first_non_consecutive([-5,-4,-3,-1])

# 9 kata
# Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits.

# first variant
def sum_digits(number)
    number.abs.to_s.split("").inject { |sum, number| sum.to_i + number.to_i }.to_i
end

# second variant
def sum_digits(number)
    number.abs.to_s.chars.map { |digit| digit.to_i }.sum
end

# best practice
def sum_digits(number)
    number.abs.digits.sum
end

# puts sum_digits(10)
# puts sum_digits(99)
# puts sum_digits(-32)
# puts sum_digits(-3)

# 10 kata
# Numbers ending with zeros are boring. They might be fun in your world, but not here. Get rid of them. Only the ending ones.

# my solution
def no_boring_zeros(num)
    if num == 0
        return num
    end
    while num % 10 == 0
        num /= 10
    end
    num
end

# less lines
def no_boring_zeros(num)
    return num if num.zero?
    num /= 10 until num % 10 != 0
    num
end

# through regexp
def no_boring_zeros(num)
    num.to_s.gsub(/[0]+$/,"").to_i
end

puts no_boring_zeros(1450)
puts no_boring_zeros(145000)
puts no_boring_zeros(-145000)
puts no_boring_zeros(0)
