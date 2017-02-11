require 'byebug'

my_hash = {
    'category' => 'clothes',
    'size' => {
        'L' => 5,
        'M' => 10,
        'S' => 9,
        'EXTRA' => 88,
        'XL' => 1,
        'XS' => 4
    }
}

correct_size_order = %w(XS S M L XL)

byebug

puts correct_size_order

