class Dog
    def initialize(name, breed)
        @name  = name
        @breed = breed
    end
    
    def bark
        puts "Woof!"
    end
    
    private # Everything above here is private
    
    def id
        @id_number = 12345
    end
    
end

# Methods are public by default in Ruby

