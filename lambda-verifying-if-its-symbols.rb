my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |parameter| parameter.is_a? Symbol }

# if my_array is a symbol
# We can represent the sentense above with "my_array.is_a? Symbol"

symbols = my_array.select(&symbol_filter)

puts symbols
