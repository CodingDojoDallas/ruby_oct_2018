class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end
  def attack(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
  end
end

class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
	end
	def heal
		@health += 10
		self
	end
	def fireball(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 20
		end
		self
	end
end

class Ninja < Human
	def initialize
		super
		@stealth = 175
	end
	def steal
		if obj.class.ancestors.include?(Human)
			@health += 10
			self
		end
	end
	def get_away
		@health -= 15
		self
	end
end

class Samurai < Human
	attr_reader :total
	@@total = 0
	def initialize
		@health = 200
		@@total += 1
		super
	end
	def death_blow obj
		if obj.class.ancestors.include?(Human)
			obj.health = 0
			self
		end
	end
	def meditate
		@health = 200
	end
	def self.how_many
		puts "there are #{@how_many} Samuri"
	end
end 

human = Human.new
wizard = Wizard.new
ninja = Ninja.new
samurai = Samurai.new
