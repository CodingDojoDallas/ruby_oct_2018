require_relative 'Mammal'
class Lion < Mammal
    def initialize
        @health = 170
    end

    def fly
        @health -= 10
        return self
    end

    def attacktown
        @health -= 50
        return self
    end

    def eat_humans
        @health += 20
        return self
    end

    def displayhealth
        puts "This is a lion"
        super()
    end
end
lion1 = Lion.new
lion1.fly.attacktown.eat_humans.displayhealth
lion2 = Lion.new
lion2.attacktown.attacktown.attacktown.eat_humans.eat_humans.fly.fly.displayhealth