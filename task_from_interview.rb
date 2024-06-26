# write function which takes array, sums first and last item,
# second and prelast, and return max number

def max_from_summed_arr(arr)
    new_arr = []
    while arr != []
        new_arr << arr.shift + arr.pop
    end
    new_arr.max
end

puts max_from_summed_arr([1, 22, 3, 4, 5, 8])
puts max_from_summed_arr([1, 2, 3, 4, 51, 8])