numbers = [1, 2, 4, 6, 8, 10]

sum = 0
numbers.each { |number| sum += number }
puts sum


sum2 = numbers.inject(:+)
puts sum2
