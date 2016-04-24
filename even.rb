my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |k| puts k.to_i if k.to_i.even? }
# Prints only even numbers (divisible by 2)


# my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# my_array.each do |k| 
#    puts key.to_i if key.to_i.even?
# end