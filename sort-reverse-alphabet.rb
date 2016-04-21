fruits = ["orange", "apple", "banana", "pear", "grapes"]

# We use sort! to make the sort permanent
fruits.sort! do |before, after| # 2 temporary variables
    after <=> before # Here the magic happens
end


# by the way.. fruits.reverse does the same thing. 
# fruits.reverse.reverse also can be used to order by ASC
