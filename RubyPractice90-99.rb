# 90 kata
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. 
# We want to create the text that should be displayed next to such an item.

def likes(names)
  first, second, third, *other = names
  if names.empty?
    "no one likes this"
  elsif names.length == 1
    "#{first} likes this"
  elsif names.length == 2
    "#{first} and #{second} like this"
  elsif names.length == 3
    "#{first}, #{second} and #{third} like this"
  else
    "#{first}, #{second} and #{names.length - 2} others like this"
  end
end
