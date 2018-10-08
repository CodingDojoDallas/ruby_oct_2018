require_relative 'Mammal'
class Dog < Mammal
    def pet
        @health += 5
        return self
    end
    
    def walk
        @health -= 1
        return self
    end

    def run
        @health -= 10
        return self
    end
end
dog1 = Dog.new
dog1.pet.walk.run.displayhealth
dog2 = Dog.new
dog2.walk.walk.walk.run.run.pet.displayhealth