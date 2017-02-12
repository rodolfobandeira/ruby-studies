class QuickUnion

  attr_accessor :id

  def initialize(n)
    @id = [*0..n]
  end

  def root(i)
    while(i != id[i])
      i = id[i]
    end
    i
  end

  def connected?(p, q)
    root(p) == root(q)
  end

  def union(p, q)
    i = root(p)
    j = root(q)
    id[i] = j
  end
end


quick_union = QuickUnion.new(9)
print "Initial:    --> #{quick_union.id}"
puts
puts

quick_union.union(4, 3)
print "union(4, 3) --> #{quick_union.id}"
puts

quick_union.union(3, 8)
print "union(3, 8) --> #{quick_union.id}"
puts
