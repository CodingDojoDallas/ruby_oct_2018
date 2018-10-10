class Mammal
    attr_accessor :health

    def initialize
        @health = 170
    end
    
    def display_health
        puts "health of mammal is #{@health}"
    end
end
mammal = Mammal.new
puts mammal.display_health
