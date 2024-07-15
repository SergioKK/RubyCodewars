# 40 kata

# Your task is to write a function that takes a String and returns an Array/list with the length of each word added to each element.

def add_length(str)
    str.split.map { |word| "#{word} #{word.length}" }
end


# 41 kata

# Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.

def flatten_and_sort(array)
    array.inject { |arr1, arr2| arr1 + arr2 }.sort
end

# best practice
def flatten_and_sort(array)
    array.flatten.sort
end


# 42 kata

# Finish the solution so that it sorts the passed in array of numbers. 
#If the function passes in an empty array or null/nil value then it should return an empty array.

def solution(nums)
    nums ? nums.sort! : []
end


# 43 kata

# Your task, is to create N×N multiplication table, of size provided in parameter.

def multiplication_table(size)
    arr = []
    initial_arr = (1..size).to_a
    time = 1
    size.times do
        arr << initial_arr.map { |num| num * time }
        time += 1
    end
    arr
end


# 44 kata

#Make a program that filters a list of strings and returns a list with only your friends name in it.
#If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...

def friend(friends)
    friends.reject { |friend| friend.chars.count != 4 }
end


# 45 kata

#Given an array of positive integers (the weights of the people), 
#return a new array/tuple of two integers, where the first one is the total weight of team 1, and the second one is the total weight of team 2.

def row_weights(array)
    first_team = array.select.with_index { |num, index| index.even? }
    first_team_weight = first_team.inject(:+)

    second_team = array.select.with_index { |num, index| index.odd? }
    second_team_weight = second_team.empty? ? 0 : second_team.inject(:+) 
    
    [first_team_weight, second_team_weight]
end

# better solution using .partition()

def row_weights(array)
    array.partition.with_index{ |_, i| i.even? }.map(&:sum)
end


# 46 kata

# Each lowercase letter becomes uppercase and each uppercase letter becomes lowercase

class String
    def to_alternating_case
      self.swapcase
    end
end


# 47 kata

#Your task is to write function factorial.

def factorial(n)
    n == 0 ? 1 : n*factorial(n-1)
end


# 48 kata

# Write a function that accepts two integers and returns the remainder of dividing the larger value by the smaller value.
# Division by zero should return an empty value.

def remainder(a, b)
    return nil if a.zero? || b.zero?
    a, b = a.abs, b.abs
    a > b ? a % b : b % a
end


# 49 kata

=begin
  Once upon a time, on a way through the old wild mountainous west,…
… a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". 
Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.

Going to one direction and coming back the opposite direction right away is a needless effort. 
Since this is the wild west, with dreadful weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!

How I crossed a mountainous desert the smart way.
=end


# my solution

def dirReduc(arr)
    redudant_moves = ["NORTHSOUTH", "WESTEAST", "EASTWEST", "SOUTHNORTH"]
    index_1 = 0
    index_2 = 1
    loop do
        if index_2 >= arr.length
          break
        end
        if redudant_moves.include?(arr[index_1] + arr[index_2])
            arr.delete_at(index_1)
            arr.delete_at(index_1)
            index_1 = 0
            index_2 = 1
        else
            index_1 += 1
            index_2 += 1
        end
    end
    arr
end

# best practice

OPPOSITE = {
    "NORTH" => "SOUTH",
    "SOUTH" => "NORTH",
    "EAST"  => "WEST",
    "WEST"  => "EAST"
}

def dirReduc(arr)
    stack = []
    arr.each do |dir|
        OPPOSITE[dir] == stack.last ? stack.pop : stack.push(dir)
    end
    stack
end
