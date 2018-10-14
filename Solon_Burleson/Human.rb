class Human
    attr_accessor :strength, :stealth, :intelligence, :health
    def initialize
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end

    def attack enemy
        if enemy.class.ancestors.include? Human
            enemy.health -= 3
            puts enemy.health
            return self
        else
            puts "Enemy is a #{enemy.class}, cannot attack"
            return self
        end
    end

    def display_stats
        puts @strength, @stealth, @intelligence, @health
        return self
    end

    def health_check
        puts @health
        return self
    end
end