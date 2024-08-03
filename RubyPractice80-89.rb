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
