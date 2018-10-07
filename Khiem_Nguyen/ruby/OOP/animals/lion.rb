require_relative "mammal"

class Lion < Mammal
    def initialize
        self.health = 170
    end
    def fly
        self.health = health - 10
        self
    end
    def attack_town
        self.health = health - 50
        self
    end
    def eat_humans
        self.health = health + 20
        self
    end

end

lion1 = Lion.new.fly.attack_town.eat_humans.display_health
lion2 = Lion.new.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
