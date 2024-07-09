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
