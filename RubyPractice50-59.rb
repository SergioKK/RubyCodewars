# 50 kata
# Complete the function that receives as input a string, and produces outputs according to the following table:

def get_drink_by_profession(param)
  hash_values = {"Jabroni" => "Patron Tequila",
  "School Counselor" => "Anything with Alcohol",
  "Programmer"	=> "Hipster Craft Beer",
  "Bike Gang Member"	=> "Moonshine",
  "Politician"	=> "Your tax dollars",
  "Rapper"	=> "Cristal"
  }
  new_param = param.split(" ").map { |word| word.capitalize! }.join(" ")
  hash_values[new_param] ? hash_values[new_param] : "Beer"
end


# 51 kata
# Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

def get_grade(s1, s2, s3)
  score = [s1, s2, s3].sum/3
  return 'A' if score >= 90
  return 'B' if score >= 80
  return 'C' if score >= 70
  return 'D' if score >= 60
  'F'
end


# 52 kata
# Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.

def repeat_str (n, s)
  s * n
end


# 53 kata
# Write a function that takes an array of strings as an argument and returns a sorted array containing the same strings, 
# ordered from shortest to longest.

def sort_by_length(arr)
  arr.sort_by(&:length)
end