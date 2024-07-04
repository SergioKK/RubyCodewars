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
