class QuickFind

  attr_accessor :id

  def initialize(n)
    @id = [*0..n]
  end

  def connected?(p, q)
    id[p] == id[q]
  end

  def union(p, q)
    id.each_with_index do |_, index|
      if id[index] == p
        id[index] = q
      end 
    end
  end
end


quick_find = QuickFind.new(9)
print "Initial:    --> #{quick_find.id}"
puts
puts

quick_find.union(4, 3)
print "union(4, 3) --> #{quick_find.id}"
puts

quick_find.union(3, 8)
print "union(3, 8) --> #{quick_find.id}"
puts
puts

puts 'Final data structure view:'

puts '0    1    2    3----4'
puts '               |'
puts '5    6    7    8    9'

# OUTPUT:
#-----------------------------------------------

# Initial:    --> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# union(4, 3) --> [0, 1, 2, 3, 3, 5, 6, 7, 8, 9]
# union(3, 8) --> [0, 1, 2, 8, 8, 5, 6, 7, 8, 9]

# Final data structure view:
# 0    1    2    3----4
#                |
# 5    6    7    8    9
