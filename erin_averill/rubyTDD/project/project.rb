# class CodingDojo 
#   @@no_of_branches = 0
#   def initialize(id, name, address) 
#     @branch_id = id 
#     @branch_name = name 
#     @branch_address = address 
#     @@no_of_branches += 1 
#     puts "Created branch #{@@no_of_branches}"
#   end
#   def hello 
#     puts "Hello CodingDojo!"
#   end
#   def display_all
#     puts "Branch ID: #{@branch_id}"
#     puts "Branch Name: #{@branch_name}" 
#     puts "Branch Address: #{@branch_address}"
#   end
#   def self.num_of_branches
#     @@no_of_branches
#   end
# end
# seattle = CodingDojo.new(1, "Seattle", "123 Seattle Avenue")
# san_jose = CodingDojo.new(2, "San Jose", "456 San Jose Boulevard")
# burbank = CodingDojo.new(3, "Burbank", "789 Burbank Street")

# class Project
#   def initialize(name, description)
#     @project_name = name
#     @project_description = description
#   end
#   def elevator_pitch
#     puts "#{@project_name}, #{@project_description}"
#   end
#   def display_name
#     puts @project_name
#   end
# end

# project1 = Project.new("Project 1", "Description 1")
# puts project1.display_name # => "Project 1"
# project1.elevator_pitch  # => "Project 1, Description 1"

class Project
  attr_accessor :name, :description, :owner, :tasks
  def initialize name, description, owner, tasks
    @name = name
    @description = description
    @owner = ''
    @tasks = tasks
  end
  def display_name
    "#{@name}"
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
  def add_tasks task
  	@tasks.push(task)
  end
  def tasks
  	@tasks
  end
end
