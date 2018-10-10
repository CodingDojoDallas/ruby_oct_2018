require_relative "human"

class Ninja < Human
    def initialize(name)
        super
        @stealth = 175
    end

    def get_away
        @health -= 15
        puts "#{self.name} got away and now has a health of #{@health}"
    end

    def steal(object)
        object.health += 10
        puts "#{self.name} stole from #{object.name} and now have a health of #{object.health}"
    end
end

sammy = Ninja.new("Sammy")
john = Ninja.new("John")


# #  Ninja should have a get_away method which, when invoked, decreases its health by 15
sammy.get_away

# #  Ninja should have a steal method which, when invoked, attacks an object and increases the Ninjas health by 10
sammy.steal(john)

