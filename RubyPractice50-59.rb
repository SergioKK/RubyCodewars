# 50 kata
# Complete the function that receives as input a string, and produces outputs according to the following table:

def get_drink_by_profession(param)
  hash_values = {"Jabroni" => "Patron Tequila",
  "School Counselor" => "Anything with Alcohol",
  "Programmer"	=> "Hipster Craft Beer",
  "Bike Gang Member"	=> "Moonshine",
  "Politician"	=> "Your tax dollars",
  "Rapper"	=> "Cristal"
  }
  new_param = param.split(" ").map { |word| word.capitalize! }.join(" ")
  hash_values[new_param] ? hash_values[new_param] : "Beer"
end
