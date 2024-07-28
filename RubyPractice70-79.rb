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


# 72 kata
#Return a new array consisting of elements which are multiple of their own index in input array (length > 1).

def multiple_of_index arr
  arr.select.with_index { |num, index| num if index > 0 and (num % index) == 0 }
end


# 73 kata
# Given an array of integers , Find the maximum product obtained from multiplying 2 adjacent numbers in the array.

def adjacent_element_product(array)
  array.each_cons(2).map { |a,b| a * b }.max
end


# 74 kata
# Write a function that will check if two given characters are the same case.

#If either of the characters is not a letter, return -1
#If both characters are the same case, return 1
#If both characters are letters, but not the same case, return 0

def same_case(a, b)
  case
  when (a + b).scan(/[A-Z]/).length    == 2 then 1
  when (a + b).scan(/[a-z]/).length    == 2 then 1
  when (a + b).scan(/[A-Za-z]/).length  < 2 then -1
  else 0
  end
end


# 75 kata
=begin
The input is a string str of digits. Cut the string into chunks 
(a chunk here is a substring of the initial string) of size sz (ignore the last chunk if its size is less than sz).

If the sum of a chunk's digits is divisible by 2, reverse that chunk; 
otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.
=end

def revrot(str, sz)
  return '' if sz <= 0 || str.empty? || sz > str.size
  str.scan(/\d{#{sz}}/).map do |num|
    if num.chars.map { |digit| digit.to_i**3 }.reduce(:+).even?
      num.reverse
    else
      num.chars.rotate.join
    end
  end.join
end
