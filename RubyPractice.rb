# 1 kata
def paperwork(n, m)
    [m, n].any? { |elem| elem < 0 } ? 0 : m * n
end

# puts paperwork(-5,5)
# puts paperwork(5,-5)
# puts paperwork(5,5)

# 2 kata
=begin 

After a hard quarter in the office you decide to get some rest on a vacation. 
So you will book a flight for you and your girlfriend and try to leave all the mess behind you.
You will need a rental car in order for you to get around in your vacation. 
The manager of the car rental makes you some good offers.
Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. 
Alternatively, if you rent the car for 3 or more days, you get $20 off your total.
Write a code that gives out the total amount for different days(d). 

=end

def rental_car_cost(d)
    amount = d*40

    if d >= 7
        amount -= 50
    elsif d >= 3
        amount -= 20
    end

    amount
end

# puts rental_car_cost(1)
# puts rental_car_cost(2)
# puts rental_car_cost(3)
# puts rental_car_cost(7)
# puts rental_car_cost(8)
# puts rental_car_cost(98)


# 3 kata
=begin

You are given an odd-length array of integers, in which all of them are the same, except for one single number.

Complete the method which accepts such an array, and returns that single different number.

The input array will always be valid! (odd-length >= 3)

=end

def stray (numbers)
    numbers.each { |number| if numbers.count(number) == 1 then return number end }
end

# puts stray([1, 1, 2])
# puts stray([17, 17, 3, 17, 17, 17, 17])


# 4 kata
# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

def filter_list(l)
    l.select { |number| number.is_a?(Integer)}
end

puts filter_list([1,2,'a','b'])
