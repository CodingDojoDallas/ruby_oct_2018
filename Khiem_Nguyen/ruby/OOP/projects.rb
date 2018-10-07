class Project
    attr_accessor :name
    attr_accessor :description
    def initialize(name, description)
        @name = name
        @description = description
    end
    def elevator_pitch
        puts "The project name is  #{@name} and is about #{@description}"
    end

end
project1 = Project.new("Project 1", "Description 1")
project2 = Project.new("Chemistry Volcano", "The baking soda and vinegar will react to form rigourous carbon dioxide")

puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
project2.elevator_pitch
puts project2.description
