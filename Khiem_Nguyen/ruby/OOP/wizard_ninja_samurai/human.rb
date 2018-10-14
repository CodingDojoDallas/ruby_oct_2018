class Human
    attr_accessor :name, :strength, :stealth, :intelligence, :health
    def initialize(name)
        @name = name
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end

    def attack(object)
        if object.class.ancestors.include?(Human)
            object.health -= 10
            puts "You attacked the #{object.name}! and their health is now #{object.health}"
        else
            puts "You cannot attack #{object.name} because they are not human!"
        end
        self
    end

    def display_health
        puts "#{self.name}'s health is #{@health}"
        self
    end

end


Goliath = Human.new("Goliath")
david = Human.new("David")


# class Human
#   attr_accessor :strength, :intelligence, :health, :stealth
#   def initialize
#     @strength = 3
#     @intelligence = 3
#     @stealth = 3
#     @health = 100
#   end
#   def attack(obj)
#     # check if the attacked object's class is Human or inherits from the Human class
#     if obj.class.ancestors.include?(Human)
#       obj.health -= 10
#       # remember that we don't need to write "return" in ruby
#       # stating true below will automatically return the boolean true
#       true
#     else
#       false
#     end
#   end
# end
