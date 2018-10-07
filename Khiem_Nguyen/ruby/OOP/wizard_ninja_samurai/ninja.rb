require_relative "human"
class Ninja < Human
    def initialize(name)
        super
        @stealth = 175
    end

    def display_stealth
        puts "#{self.name}'s stealth is #{@stealth}"
        self
    end

    def steal(object)
        attack(object)
        @health = @health + 10
        puts "#{self.name} attacked #{object.name}"
        self
    end

    def get_away
        @health = @health - 15
        puts "#{self.name}'s health is now #{@health}"
        self
    end

end

gaiden = Ninja.new("Gaiden")

# Gaiden.attack(Goliath)
# Gaiden.display_stealth.steal(Goliath)
Gaiden.get_away
