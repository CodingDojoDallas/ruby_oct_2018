class Project
    attr_accessor :name, :description

    def initialize(name, description)
        @name = name
        @description = description
    
    end

    def elevator_pitch
    puts "Name : #{@name}"
    puts "Description : #{@description}"
    end

end
  project1 = Project.new("Project 1", "Description 1")
  puts project1.name # => "Project 1"
  project1.elevator_pitch  # => "Project 1, Description 1"

user1.deposit(800, "checking")
user1.deposit(400, "saving")
user1.withdraw(200, "saving")
user1.withdraw(100, "checking")
user1.displayTotalBalance
user1.account_information
  