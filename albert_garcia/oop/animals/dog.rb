require_relative 'mammal'
class Dog < Mammal
    def health
        @health
    end
    def pet
        @health += 5
        self
    end
    def walk
        @health -= 1
        self
    end
    def run
        @health -= 10
        self
    end
end
class Lion < Mammal
    def initialize
        @health = 170
    end
    def fly
        @health -= 10
        self
    end
    def attack_town
        @health -= 50
        self
    end
    def eat_humans
        @health += 20
        self
    end
    def display_health
        puts "I am a lion, my health is at: " 
        super
    end
end

dog1 = Dog.new(dog1)
dog1.display_health
# dog1.pet.walk.walk.walk.run.run.display_health
# lion1 =Lion.new
# lion1.attack_town.attack_town.attack_town.eat_humans.eat_humans.eat_humans.fly.fly.display_health
