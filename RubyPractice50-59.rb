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


# 54 kata
# Given an integer as input, can you round it to the next (meaning, "greater than or equal") multiple of 5?

def round_to_next_5(n)
  (n/5.0).ceil * 5
end


# 55 kata
#Write a function which returns a new string containing the same character sequences except the first and the last ones but this time separated by spaces.

def array(string)
  return nil if string.split(",").length <= 2
  string.split(",")[1..-2].join(" ")
end


# 56 kata
=begin
You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:
Your message is a string containing space separated words.
You need to encrypt each word in the message using the following rules:
The first letter must be converted to its ASCII code.
The second letter must be switched with the last letter
Keepin' it simple: There are no special characters in the input.  
=end

def encrypt_this(text)
  splited_text = text.split(" ")
  encrypted_text = []
  splited_text.each do |word|
    if word.length < 3
      encrypted_text << "#{word.ord}#{word[1]}"
    else
      encrypted_text << "#{word.chars.first.ord}#{word[-1]}#{word[2..-2]}#{word[1]}"
    end
  end
  encrypted_text.join(" ")
end


# 57 kata
# Create a function that accepts a string and a single character, 
# and returns an integer of the count of occurrences the 2nd argument is found in the first one.

def str_count(word, letter)
  word.count(letter)
end
