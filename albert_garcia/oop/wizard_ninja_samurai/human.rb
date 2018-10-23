class Human
    # attr_accessor :health
    def initialize
        @health = 100
        @strength = 3
        @intelligence = 3
        @stealth = 3
    end
    def display_health
        puts @health
    end
    def attack(person)
        if person.class.ancestors.include?(Human)
            person.health -= 3
            self
        else puts "#{person} is not a human, you cannot attack"
        end
    end
  end
