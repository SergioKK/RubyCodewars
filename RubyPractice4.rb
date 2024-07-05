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
  