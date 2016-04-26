class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians) # Now it's the same of Math::cos(1)
  end
end

acute = Angle.new(1)
acute.cosine