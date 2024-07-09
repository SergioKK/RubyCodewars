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
