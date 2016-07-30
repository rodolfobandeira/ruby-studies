# The goal is put the group 'size' from my_hash according with that order 'correct_size_order'

def size_properly_ordered(my_hash, correct_size_order)
  if my_hash.key?('size')
    tmp = Hash.new
    tmp2 = Hash.new
    correct_size_order.each do |size_key|
      if my_hash['size'].key?(size_key)
        tmp[size_key] = my_hash['size'][size_key]
      end
    end
    my_hash['size'].each do |key, value|
      unless correct_size_order.include?(key)
        tmp2[key] = value
      end
    end
    my_hash['size'] = tmp.merge(tmp2)
  end
  my_hash
end

final_hash = size_properly_ordered(
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
  },
  correct_size_order = %w(XS S M L XL)
)

puts final_hash
# Output:
# {"category"=>"clothes", "size"=>{"XS"=>4, "S"=>9, "M"=>10, "L"=>5, "XL"=>1, "EXTRA"=>88}}
