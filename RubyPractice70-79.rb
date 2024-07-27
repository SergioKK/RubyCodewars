# 70 kata
#Given an array of numbers, return a new array of length number containing the last even numbers from the original array (in the same order). 
#The original array will be not empty and will contain at least "number" even numbers.

def even_numbers(arr,n)
  arr.select(&:even?).last(n)
end


# 71 kata
=begin
In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string 
to either lowercase only or uppercase only based on:

make as few changes as possible.
if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
  
=end

def solve(s)
  s.count('A-Z') > s.count('a-z') ? s.upcase : s.downcase
end
