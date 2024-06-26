# 11 kata

=begin
In this simple exercise, you will create a program that will take two lists of integers, a and b. 
Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. 
You must find the difference of the cuboids' volumes regardless of which is bigger.
For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. 
Therefore, the function should return 8.
=end

def find_difference(a, b)
    (a.inject(:*) - b.reduce(:*)).abs
end

# puts find_difference([3, 2, 5], [1, 4, 4])
# puts find_difference([9, 7, 2], [5, 2, 2])


# 12 kata

=begin
Given a list of integers, determine whether the sum of its elements is odd or even.
Give your answer as a string matching "odd" or "even".
If the input array is empty consider it as: [0] (array with a zero).
=end

def odd_or_even(array)
    array.sum % 2 == 0 ? "even" : "odd"
end

puts odd_or_even([0])
puts odd_or_even([1])
puts odd_or_even([-1023, 1, -2])