class Mammal
    attr_accessor :name
    def initialize(name)
        @name = name
        @health = 150
    end
    def display_health
        puts @health
    end
end