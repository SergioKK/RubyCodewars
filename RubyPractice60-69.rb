# 60 kata
=begin
Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) 
that checks whether the two arrays have the "same" elements, with the same multiplicities 
(the multiplicity of a member is the number of times it appears). 
"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
=end

def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  array1.map {|num| num ** 2}.sort == array2.sort 
end


# 61 kata
=begin
Your task is correct the errors in the digitised text. You only have to handle the following mistakes:

S is misinterpreted as 5
O is misinterpreted as 0
I is misinterpreted as 1
=end

def correct(string)
  replacement = {"5" => "S", "0" => "O", "1" => "I"}
  string.gsub(/[501]/, replacement)
end

# another way
def correct(string)
  string.tr('501','SOI')
end


# 62 kata
# Given a 2D ( nested ) list ( array, vector, .. ) of size m * n, your task is to find the sum of the minimum values in each row.
 
def sum_of_minimums(numbers)
  numbers.inject(0) { |sum, number| sum += number.min }
end

# best way
def sum_of_minimums(numbers)
  numbers.sum(&:min)
end


# 63 kata
=begin
Write a function that takes an array of numbers (integers for the tests) and a target number. 
It should find two different items in the array that, when added together, give the target value. 
The indices of these items should then be returned in a tuple / list (depending on your language) like so: (index1, index2).
=end

def two_sum(numbers, target)
  numbers.each_with_index do |n1, i1|
    numbers.each_with_index do |n2, i2|
      return [i1, i2] if (n1 + n2) == target && i1 != i2
    end
  end
end


# 64 kata
# You have to write a function printer_error which given a string will return the error rate of the printer as a string representing 
# a rational whose numerator is the number of errors and the denominator the length of the control string. 
# Don't reduce this fraction to a simpler expression.

def printer_error(s)
	"#{s.count('n-z')}/#{s.length}"
end


# 65 kata
# There's a "3 for 2" (or "2+1" if you like) offer on mangoes. For a given quantity and price (per mango), calculate the total cost of the mangoes.

def mango(quantity, price)
  (quantity - quantity/3) * price
end


# 66 kata
=begin
A string is considered to be in title case if each word in the string is either (a) capitalised 
(that is, only the first letter of the word is in upper case) or (b) considered to be an exception and 
put entirely into lower case unless it is the first word, which is always capitalised.
Write a function that will convert a string into title case, given an optional list of exceptions (minor words). 
The list of minor words will be given as a string with each word separated by a space. Your function should ignore the 
case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.
=end

def title_case(title, minor_words='')
  minor_words = minor_words.downcase.split(' ')
  title.capitalize.split(' ').map { |word| minor_words.include?(word.downcase) ? word : word.capitalize }.join(' ')
end


# 67 kata
#Write a simple regex to validate a username. Allowed characters are: lowercase letters, numbers, underscore
#Length should be between 4 and 16 characters (both included).

def validate_usr(username)
  username.match?(/^[a-z0-9_]{4,16}$/)
end


# 68 kata
#Your task is to write a function which calculates the value of a word based off the sum of the alphabet positions of its characters.
#The input will always be made of only lowercase letters and will never be empty.

def words_to_marks(string)
  string.chars.inject(0) { |sum, char| sum + (char.bytes[0] - 96) }
end


# 69 kata
=begin
Create a function that converts US dollars (USD) to Chinese Yuan (CNY) . 
The input is the amount of USD as an integer, and the output should be a string that states the amount of Yuan followed by 'Chinese Yuan'
The conversion rate you should use is 6.75 CNY for every 1 USD. 
=end

def usdcny(usd)
  '%.2f Chinese Yuan' % (usd * 6.75)
end
