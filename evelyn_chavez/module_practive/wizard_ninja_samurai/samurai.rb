require_relative "human"

class Samurai < Human
    @@no_of_samurais = 0
    def initialize(name)
        super
        @health = 200
        @@no_of_samurais += 1
        
    end

    def death_blow(object)
        object.health = 0
        puts "#{self.name} attacked #{object.name} and has a health of #{object.health}"
    end 
    
    def meditate
        @health = 200
        puts "#{self.name} meditated and regained his health to #{@health}"
    end

    def how_many
        puts "There are #{@@no_of_samurais} of samurais"
    end
end

lest = Samurai.new("lest")
dan = Samurai.new("Dan")


# #  Samurai should have method called death_blow, which when invoked, attacks an object and decreases its health to 0
lest.death_blow(dan)


# #  Samurai should have a method called meditate, which when invoked, heals the Samurai back to full health
lest.meditate
# 

# #  Samurai should have a class method called how_many, which when invoked, displays how many Samurai's there are
