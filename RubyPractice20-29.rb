# 20 kata

=begin
An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.
=end

def is_anagram(test, original)
    test.downcase.chars.sort == original.downcase.chars.sort
end


# 21 kata

=begin
Welcome.

In this kata you are required to, given a string, replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.
=end

def alphabet_position(text)
    # select from text only letters in lowercase
    text = text.downcase.gsub(/[a-z]+/).to_a.join

    # convert each letter into bytes position and then substract 96 which become equal to alphabet position
    text.downcase.bytes.map { |char| char - 96}
end


# 22 kata

#Implement a function that accepts 3 integer values a, b, c. 
#The function should return true if a triangle can be built with the sides of given length and false in any other case.
#(In this case, all triangles must have surface greater than 0 to be accepted).

def is_triangle(a,b,c)
    a, b, c = [a, b, c].sort!
    a + b > c
 end


# 23 kata

=begin
The first input array is the key to the correct answers to an exam, like ["a", "a", "b", "d"]. The second one contains a student's submitted answers.
The two arrays are not empty and are the same length. Return the score for this array of answers, giving +4 for each correct answer, -1 
for each incorrect answer, and +0 for each blank answer, represented as an empty string (in C the space character is used).
=end

def check_exam(arr1,arr2)
    result = 0
    i = 0
    4.times do   
        if arr1[i] == arr2[i]
            result += 4
        elsif arr2[i] == ""
            result += 0
        else
            result -= 1
        end 
        i += 1
    end
    result < 0 ? 0 : result
end


# 24 kata

# Given a list of digits, return the smallest number that could be formed from these digits, using the digits only once (ignore duplicates).

def min_value(digits)
    digits.sort.uniq.join.to_i
end


# 25 kata

# Given a string str, reverse it and omit all non-alphabetic characters.

def reverse_letter(str)
    str.reverse.chars.select { |char| char.match(/[A-Za-z]/) }.join

    # better way
    # string.delete("^A-Za-z").reverse
end


# 26 kata

# example wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

def wave(str)
    string_to_change = str.split("")
    result_arr = []
    string_to_change.each.with_index do |char, index|
        if char != " "
            string_to_change[index] = char.upcase
            new_arr = string_to_change.dup
            result_arr << new_arr.join
            string_to_change[index] = char.downcase
        end
    end
    result_arr
end


# 27 kata
# learn how to use proc

def apply_blocks(number, blocks)
    blocks.each do |block|
        number = block.call(number)
    end
    number
end


# 28 kata
=begin
In a small town the population is p0 = 1000 at the beginning of a year. 
The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. 
How many years does the town need to see its population greater than or equal to p = 1200 inhabitants?
=end

def nb_year(p0, percent, aug, p)
    years = 0
    while p > p0
        p0 += (p0 * percent * 0.01 + aug).to_i
        years += 1
    end
    years
end


# 29 kata
=begin
You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
Array can contain numbers or strings. X can be either.
Return true if the array contains the value, false if not.
=end

def check(arr, value)
    arr.include?(value)
end
