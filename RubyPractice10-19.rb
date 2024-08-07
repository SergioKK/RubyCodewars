# 10 kata
# Numbers ending with zeros are boring. They might be fun in your world, but not here. Get rid of them. Only the ending ones.

# my solution
def no_boring_zeros(num)
    if num == 0
        return num
    end
    while num % 10 == 0
        num /= 10
    end
    num
end

# less lines
def no_boring_zeros(num)
    return num if num.zero?
    num /= 10 until num % 10 != 0
    num
end

# through regexp
def no_boring_zeros(num)
    num.to_s.gsub(/[0]+$/,"").to_i
end


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


# 12 kata

=begin
Given a list of integers, determine whether the sum of its elements is odd or even.
Give your answer as a string matching "odd" or "even".
If the input array is empty consider it as: [0] (array with a zero).
=end

def odd_or_even(array)
    array.sum.even? ? "even" : "odd"
end


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


# 15 kata

#Simple, given a string of words, return the length of the shortest word(s). 
#String will never be empty and you do not need to account for different data types.

def find_short(s)
    return s.split(" ").min_by(&:length).size
end


# 16 kata

#Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
#The output should be two capital letters with a dot separating them.

def abbrev_name(name)
    name.split(" ").map { |word| word[0].upcase }.join(".")
end


# 17 kata
# Calculator

def arithmetic(a, b, operator)
    operators = { "add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    a.send operators[operator], b
end


# 18 kata

def accum(s)
	s.split("").map.with_index { |char, index| "#{char*(index+1)}".capitalize }.join("-")
end


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


def decrypt(encrypted_text, n)
    n.times do
        middle = encrypted_text.length/2

        # learning about enumerators and try it on practice .to_enum
        first_half = encrypted_text.slice(0..middle-1).split("").to_enum
        second_half = encrypted_text.slice(middle..-1).split("").to_enum

        encrypted_text = ""

        loop do
          encrypted_text += "#{second_half.next}#{first_half.next}"
        end
    end
    encrypted_text+"!"
end


=begin
Best practice of 19 kata

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
=end
