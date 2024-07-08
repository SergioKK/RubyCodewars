# 31 kata

=begin
Write a function that takes a single non-empty string of only lowercase and uppercase ascii letters (word) as its argument, 
and returns an ordered list containing the indices of all capital (uppercase) letters in the string.
=end

def capitals(word)
    arr = []
    word.chars.each.with_index do |char, index|
        if char.match(/[A-Z]/)
            arr.push(index)
        end
    end
    arr
end


# 32 kata

=begin
Given an array of integers, remove the smallest value. 
Do not mutate the original array/list. 
If there are multiple elements with the same value, remove the one with the lowest index. 
If you get an empty array/list, return an empty array/list.
Don't change the order of the elements that are left.
=end

def remove_smallest(numbers)
    return numbers if numbers.empty?
    new_numbers = numbers.dup
    new_numbers.delete_at(new_numbers.index(new_numbers.min))
    new_numbers
end


# 33 kata

# Write a function that returns a string in which firstname is swapped with last name.

def name_shuffler(str)
    str.split(" ").reverse.join(" ")
end


# 34 kata

=begin
You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. 
Let x be any string in the first array and y be any string in the second array.

Find max(abs(length(x) − length(y)))

If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).
=end

def mxdiflg(a1, a2)
    return -1 if a1.empty? || a2.empty?
    first_val = a2.max_by(&:length).length - a1.min_by(&:length).length
    second_val = a1.max_by(&:length).length - a2.min_by(&:length).length
    [first_val, second_val].max
end


# 35 kata

=begin
You will be given an array and a limit value. 
You must check that all values in the array are below or equal to the limit value. 
If they are, return true. Else, return false.
You can assume all values in the array are numbers.
=end

def small_enough(a, limit)
    a.map { |num| num <= limit }.all?
end


# 36 kata

=begin
Create a method that takes as input a name, city, and state to welcome a person. 
Note that name will be an array consisting of one or more values that should be joined together with one space between each, 
and the length of the name array in test cases will vary.
=end

def say_hello(name, city, state)
    name = name.join(" ")
    "Hello, #{name}! Welcome to #{city}, #{state}!"
end


# 37 kata

=begin
You will be given a list of strings. You must sort it alphabetically (case-sensitive, and based on the ASCII values of the chars) 
and then return the first value.
The returned value must be a string, and have "***" between each of its letters.
You should not remove or add elements from/to the array.
=end

def two_sort(s)
    s.sort[0].split("").join("***")
end
