require_relative "mammal"
class Dog < Mammal
    def pet
        self.health = health + 5
        self
    end
    def walk
        self.health = health - 1
        self
    end
    def run
        self.health = health - 10
        self
    end
end


Scooter = Dog.new.pet.display_health.walk.display_health.run.display_health
Buzz = Dog.new.walk.walk.walk.run.run.pet.display_health
