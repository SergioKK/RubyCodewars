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
