# 40 kata

# Your task is to write a function that takes a String and returns an Array/list with the length of each word added to each element.

def add_length(str)
    str.split.map { |word| "#{word} #{word.length}" }
end