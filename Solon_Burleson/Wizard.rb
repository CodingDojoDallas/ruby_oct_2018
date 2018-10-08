require_relative 'Human'

class Wizard < Human
    def initialize
        super()
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
        return self
    end

    def fireball enemy
        enemy.health -= 20
        return self
    end
end