fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55] #fibonacci sequence

# The collect method iterates on every element of the passed array
# and applies it's internal condition. In this case it's doubling each 
# number from the array.

doubled_fibs = fibs.collect { |n| n*2 }

puts doubled_fibs
