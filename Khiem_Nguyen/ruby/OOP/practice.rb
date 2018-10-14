# class User
#   # creating instance methods that get and set the first_name and last_name attributes
#   attr_accessor :first_name, :last_name
#
#   def initialize(f_name, l_name)
#       @first_name = f_name
#     @last_name = l_name
#
#   end
#
#   def full_name
#     puts "I am #{@first_name} #{@last_name}"
#   end
#
#   def say_hello
#     puts "Hello!"
#   end
# end
# u = User.new("John", "Doe")
# u.full_name # => "I am John Doe"
# u.say_hello # => "Hello!"

class Mammal
  def initialize
    puts "I am alive"
    self
  end
  def breath
    puts "Inhale and exhale"
    self
  end

  def who_am_i
    puts self
    self
  end
end
my_mammal = Mammal.new.who_am_i.breath 
