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

# puts alphabet_position("The sunset sets at twelve o' clock.")


# 22 kata

#Implement a function that accepts 3 integer values a, b, c. 
#The function should return true if a triangle can be built with the sides of given length and false in any other case.
#(In this case, all triangles must have surface greater than 0 to be accepted).

def is_triangle(a,b,c)
    a, b, c = [a, b, c].sort!
    false if c > a + b
 end

 puts is_triangle(7,2,2)
