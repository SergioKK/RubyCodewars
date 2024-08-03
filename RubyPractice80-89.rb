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
