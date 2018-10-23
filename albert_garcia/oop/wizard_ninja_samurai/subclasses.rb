require_relative 'human'
class Wizard < Human
    attr_accessor :health
    def initialize
        super
        @health = 50
        @intelligence = 25
    end
    def heal
        @health += 10
        self
    end
    def fire_ball(target)
        if target.class.ancestors.include?(Human)
            target.health -= 20
            self
        else
            puts "#{target} is not a human, and connot be attacked with fireball"
            self
        end
    end
    def display_health
        puts "#{self} health is at:"
        super
        self
    end
  end

class Ninja < Human
    attr_accessor :health
    def initialize
        super
        @stealth = 175
    end
    def steal(target)
        if target.class.ancestors.include?(Human)
            target.health -= 10
            @health += 10
            self
        else
            puts "#{target} is not a human, and connot be attacked"
            self
        end
    end
    def get_away
        @health -= 15
        self
    end
    def display_health
        puts "#{self} health is at:"
        super
        self
    end
end


class Samurai < Human
    attr_accessor :health
    @@samurai_count = 0
    def initialize
        super
        @health = 200
        @@samurai_count += 1
    end
    def death_blow(target)
        if target.class.ancestors.include?(Human)
            target.health = 0
            puts "#{target} has been destroyed"
            self
        else
            puts "#{target} is not a human, and connot be attacked with Death Blow"
            self
        end
    end
    def meditate
        @health = 200
        self
    end
    def how_many
        puts @@samurai_count
    end
    def display_health
        puts "#{self} health is at:"
        super
        self
    end
end

ninja1 = Ninja.new
samurai1=Samurai.new
wizard1=Wizard.new
ninja1.steal(samurai1)
samurai1.display_health
samurai1.meditate.display_health
samurai1.death_blow(ninja1)