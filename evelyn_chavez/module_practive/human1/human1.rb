class Human
    attr_accessor :strength, :intelligence, :stealth, :health

    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(object)
        if object.class.ancestors
            object.health -= 10
        end
    end
end

human1 = Human.new
human2 = Human.new
human1.attack(human2)
puts human2.health
