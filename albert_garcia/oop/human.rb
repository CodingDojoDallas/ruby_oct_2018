class Human
    attr_accessor :health
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
        if person.class == Human
            person.health -= 3
            self
        else puts "#{person} is not a human, you cannot attack"
        end
    end
  end
tom=Human.new
joe=Human.new
tom.attack(joe).attack(joe)
joe.display_health
dog = "dog"
tom.attack(dog)