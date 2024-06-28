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

# puts odd_or_even([0])
# puts odd_or_even([1])
# puts odd_or_even([-1023, 1, -2])


# 13 kata

=begin
Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.
For example: month 2 (February), is part of the first quarter; month 6 (June), 
is part of the second quarter; and month 11 (November), is part of the fourth quarter.
=end

def quarter_of(month)
    return 1 if (1..3).include?(month) 
    return 2 if (4..6).include?(month) 
    return 3 if (7..9).include?(month) 
    return 4 if (10..12).include?(month) 
end

# best practice
def quarter_of(month)
    (month/3.0).ceil
end

# puts quarter_of(1)
# puts quarter_of(4)
# puts quarter_of(5)
# puts quarter_of(7)


# 14 kata

=begin
Your team is writing a fancy new text editor and you've been tasked with implementing the line numbering.
Write a function which takes a list of strings and returns each line prepended by the correct number.
The numbering starts at 1. The format is n: string. Notice the colon and space in between.
=end

# my solution
def number lines
    arr = []
    lines.each.with_index(1) do |line, index|
       arr <<  "#{index}: #{line}"
    end
    arr
end

# best practice
def number lines
    lines.map.with_index(1) { |l, i| "#{i}: #{l}" }
end

# puts number(["a", "b", "c"])
# puts number([nil, nil, nil, nil, nil])


# 15 kata

#Simple, given a string of words, return the length of the shortest word(s). 
#String will never be empty and you do not need to account for different data types.

def find_short(s)
    return s.split(" ").min_by(&:length).size
end

# puts find_short("bitcoin two take over the world maybe who knows perhaps")
# puts find_short("turns out random test cases are easier than writing out basic ones")


# 16 kata

#Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
#The output should be two capital letters with a dot separating them.

def abbrev_name(name)
    name.split(" ").map { |word| word[0].upcase }.join(".")
end

# puts abbrev_name("Sam Harris")
# puts abbrev_name("sam garris")


# 17 kata
# Calculator

def arithmetic(a, b, operator)
    operators = { "add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    a.send operators[operator], b
end

# puts arithmetic(1, 2, "add")
# puts arithmetic(8, 2, "subtract")
# puts arithmetic(8, 2, "divide")


# 18 kata

def accum(s)
	s.split("").map.with_index { |char, index| "#{char*(index+1)}".capitalize }.join("-")
end

# puts accum("ZpglnRxqenU")


# 19 kata

=begin
Implement a pseudo-encryption algorithm which given a string S and an integer N 
concatenates all the odd-indexed characters of S with all the even-indexed characters of S,
this process should be repeated N times.
=end

def encrypt(text, n)
    odd_index, even_index = [], []
    while n > 0
        text.each_char.with_index do |char, index|
            index.even? ? even_index << char : odd_index << char
        end
        n -= 1
        text = odd_index.join("") + even_index.join
        odd_index, even_index = [], []
    end
    text
end

# puts encrypt("This is a test!", 1)
# puts encrypt("This is a test!", 2)


def decrypt(encrypted_text, n)
    n.times do
        middle = encrypted_text.length/2
        first_half = encrypted_text.slice(0..middle-1)
        second_half = encrypted_text.slice(middle..-1)

        encrypted_text = ""
        m = 0

        while m < second_half.length
            encrypted_text += [second_half[m], first_half[m]].join
            m += 1
        end
    end
    encrypted_text
end

# puts decrypt("hsi  etTi sats!", 1)
# puts decrypt("s eT ashi tist!", 2)

# Best practice

def encrypt(text, n)
    return text if n <= 0

    arr1 = text.chars.select.with_index{|_,idx| idx.odd?}
    arr2 = text.chars.select.with_index{|_,idx| idx.even?}

    encrypt( (arr1 + arr2).join , n-1)
end



def decrypt(encrypted_text, n)
    return encrypted_text if n <= 0

    midpoint = encrypted_text.length/2
    arr1 = encrypted_text[0...midpoint].chars
    arr2 = encrypted_text[midpoint ..-1].chars

    decrypt( arr2.zip(arr1).join , n-1)
end


# 20 kata

=begin
An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.
=end

def is_anagram(test, original)
    test.downcase.chars.sort == original.downcase.chars.sort
end

# puts is_anagram('Creative', 'Reactive')
# puts is_anagram("foefet", "toffee")
