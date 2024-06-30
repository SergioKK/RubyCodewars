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