# Create your module here!
module MartialArts
    def swordsman
        puts "I'm a swordsman."
    end
end

class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

# Ok, now both classes inherit by the same parent "class"
# but wait.. it's not a parent class its a module!
# So.. its like trais!
# Cool
