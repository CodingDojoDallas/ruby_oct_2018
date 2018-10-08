require_relative 'Human' 


class Samurai < Human
    @@count = 0
    
    def initialize
        @@count +=1
        super()
        @health = 200
    end

    def death_blow enemy
        enemy.health -= enemy.health
        enemy.class = nil
        return self
    end

    def meditate
        @health = 200
    end

    def how_many
        puts @@count
    end
end

