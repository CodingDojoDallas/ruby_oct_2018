class Human
    attr_accessor :health
    attr_accessor :name
    def initialize(name)
        @name = name
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end

    def attack(object)
        if object.class.ancestors.include?(Human)
            object.health -= 10
            puts "You attacked the #{object.name}! and their health is now #{object.health}"
        else
            puts "You cannot attack #{object.name} because they are not human!"
        end
        self
    end

end


Goliath = Human.new("Goliath")
David = Human.new("David").attack(Goliath)
