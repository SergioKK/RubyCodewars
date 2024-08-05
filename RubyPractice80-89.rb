# 80 kata
# Create a function called shortcut to remove the lowercase vowels (a, e, i, o, u ) in a given string.

def shortcut(s)
  s.delete("aeiou")
end


# 81 kata
# Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
# Return your answer as a number.

def sum_mix(x)
  x.map { |num| num.to_i }.sum
end


# 82 kata
# When provided with a number between 0-9, return it in words.

# Input :: 1

# Output :: "One".

def switch_it_up(number)
  case number
  when 0 then "Zero"
  when 1 then "One"
  when 2 then "Two"
  when 3 then "Three"
  when 4 then "Four"
  when 5 then "Five"
  when 6 then "Six"
  when 7 then "Seven"
  when 8 then "Eight"
  when 9 then "Nine"
  end
end


# 83 kata
# Write a method that takes one argument as name and then greets that name, capitalized and ends with an exclamation point.

def greet(name)
  "Hello #{name.capitalize}!"
end


# 84 kata
# We want to know the index of the vowels in a given word, for example, there are two vowels in the word super (the second and fourth letters).

# So given a string "super", we should return a list of [2, 4].

def vowel_indices(word)
  vowels = ["a", "e", "i", "o", "u", "y"]
	word.chars.map.with_index { |char, index| index+1 if vowels.include?(char.downcase) }.reject { |char| char.nil? }
end


# 85 kata
# Jack really likes his number five: the trick here is that you have to multiply each number by 5 raised to the number of digits of each numbers.

def multiply(n)
  n*(5**n.abs.to_s.length)
end


# 86 kata
=begin
Your task is to write a function which returns the sum of a sequence of integers.
The sequence is defined by 3 non-negative values: begin, end, step.
If begin value is greater than the end, your function should return 0. 
If end is not the result of an integer number of steps, then don't add it to the sum. 
=end

def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).to_a.sum
end


# 87 kata
# Find the number with the most digits.
# If two numbers in the argument array have the same number of digits, return the first one in the array.

def find_longest(arr)
  arr.select { |num| num.to_s.length >= arr.max.to_s.length }[0]
end


# 88 kata
# Implement the function unique_in_order which takes as argument a sequence and returns 
# a list of items without any elements with the same value next to each other and preserving the original order of elements.

def unique_in_order(iterable)
  if iterable.is_a?(String)
    iterable = iterable.chars
  end

  result = []

  iterable.each do |char|
    if char != result[-1]
      result << char
    end
  end

  result
end


# 89 kata
=begin
There are pillars near the road. 
The distance between the pillars is the same and the width of the pillars is the same. 
Your function accepts three arguments:

number of pillars (≥ 1);
distance between pillars (10 - 30 meters);
width of the pillar (10 - 50 centimeters).

Calculate the distance between the first and the last pillar in centimeters (without the width of the first and last pillar).
=end

def pillars(num_of_pillars, distance, width)
  # result = 0

  # if num_of_pillars > 2
  #   result += (num_of_pillars-1)*distance*100 + (num_of_pillars-2)*width
  # elsif num_of_pillars == 2
  #   result = distance*100
  # end

  # result

  num_of_pillars >= 2 ? num_of_pillars == 2 ? result = distance*100 : 0 : (num_of_pillars-1)*distance*100 + (num_of_pillars-2)*width
end
