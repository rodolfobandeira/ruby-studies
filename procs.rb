multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)

# (1..100) iterate from 1 to 100. Using ... would iterate between 2 and 99
# .to_a converts to array
# .select iterate on every element with the proc selected between parentesis ()

# procs are a way to make a block a kind of object and save the block
# on a variable
