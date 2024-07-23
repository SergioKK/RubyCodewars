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
