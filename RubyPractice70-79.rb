# 70 kata
#Given an array of numbers, return a new array of length number containing the last even numbers from the original array (in the same order). 
#The original array will be not empty and will contain at least "number" even numbers.

def even_numbers(arr,n)
  arr.select(&:even?).last(n)
end
