class Mammal
    attr_accessor :health
    def initialize
        @health = 150
    end
    def display_health
        puts "Health is #{@health}."
        self
    end
end

mammal1 = Mammal.new.display_health
