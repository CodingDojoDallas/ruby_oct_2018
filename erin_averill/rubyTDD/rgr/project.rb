class Project
  attr_accessor :name, :description
  def initialize name, description
  	@name = name
  	@description = description
  end
  # def name=(name)
  #   @name = name
  # end
  def name
    @name
  end
  # def description=(description)
  # 	@description = description
  # end
  def description
  	@description
  end
  # def elevator_pitch=(name, description)
  # 	@name = name
  # 	@description = description
  # end
  def elevator_pitch
  	@name
  	@description
  	"#{@name}, #{@description}"	
  end
end