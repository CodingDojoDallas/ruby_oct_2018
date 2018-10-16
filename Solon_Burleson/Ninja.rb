require_relative 'Human'

class Ninja < Human
    def initialize
        super()
        @stealth = 175
    end

    def steal enemy
        enemy.health -= 10
        @health += 10
        return self
    end

    def get_away
        @health -= 15
        return self
    end
end