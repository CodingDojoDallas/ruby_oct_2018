require_relative "human"
class Samurai < Human
    @@number_of_samurai = 0
    def initialize(name)
        super
        @health = 200
        @@number_of_samurai += 1
    end
    def death_blow(object)
        object.health = 0
        puts "#{self.name} just killed #{object.name} who has a health of #{object.health} now"
        self

    end
    def meditate
        @health = 200
        self
    end
    def how_many
        puts "There are #{@@number_of_samurai} samurais"
        self
    end

end

omi = Samurai.new("Omi")
riya = Samurai.new("Riya")
samthethird = Samurai.new("SamTheThird")
john = Human.new("John")

omi.how_many
