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
