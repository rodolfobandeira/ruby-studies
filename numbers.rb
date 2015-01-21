#!/usr/bin/env ruby
#
# echo (int) ((0.1 + 0.7) * 10);


total = ( 0.1 + 0.7 ) * 10
castToInt = total.to_i

puts '((0.1 + 0.7) * 10).to_i'
puts 'Casting this math operation to int in PHP results 7.'
puts "Let's check in Ruby: #{castToInt}"

if ( castToInt == 7 ) then
    puts 'Same shit. It\'s not a php problem, it\'s a low level mistery '
else
    puts 'Oh.. it was a php problem, not ruby ruby ruby '
end
