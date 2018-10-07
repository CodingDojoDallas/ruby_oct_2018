require_relative "human"
class Wizard < Human
    def initialize(name)
        super
        @health = 50
        @intelligence = 25
    end

    def display_health
        puts "#{self.name}'s health is #{@health}"
        self
    end

    def display_intelligence
        puts "#{self.name}'s intelligence is #{@intelligence}"
        self
    end

    def heal
        @health = @health + 10
        puts "#{self.name} healed themself and has health of #{@health}"
        self
    end

    def fireball(object)
        object.health = object.health - 20
        puts "#{self.name} fireball attacked #{object.name} and has health of #{object.health} now"
        self
    end


end

w1 = Wizard.new("Gandalf")

w1.attack(goliath)
w1.fireball(goliath)
