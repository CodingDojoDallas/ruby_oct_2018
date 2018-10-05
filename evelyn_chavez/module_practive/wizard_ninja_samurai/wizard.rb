require_relative "human"

class Wizard < Human
    def initialize(name)
        super
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
        puts "#{self.name} healed themself and now has #{@health} health"
    end

    def fireball(object)
        object.health -= 20
        puts "#{self.name} fireballed #{object.name} and they have #{object.health} health"
    end
end

gandalf = Wizard.new("Gandalf")
larry = Wizard.new("Larry")

#  Wizard should have a method called heal, which when invoked, heals the Wizard by 10
gandalf.heal

#  Wizard should have a method called fireball, which when invoked, decrease the health of whichever object it attacked by 20
gandalf.fireball(larry)

  