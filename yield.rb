def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

=begin

We're in the method!
Yielding to the block...
>>> We're in the block!
We're back in the method!

=end