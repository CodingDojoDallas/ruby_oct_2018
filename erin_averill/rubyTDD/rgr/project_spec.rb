require_relative 'project'
RSpec.describe Project do
	before(:each) do 
		@example1 = Project.new("Project Name", "Description")
	end
  it "has a getter and setter for name attribute" do
    # project = Project.new
    # project.name = "Project Name"
    expect(@example1.name).to eq("Project Name")
  end
  it "has a getter and setter for the description attribute" do
    # project = Project.new
    # project.description = "Description"
    expect(@example1.description).to eq("Description")
  end
  it 'has a method elevator_pitch to explain name and description' do
    # project = Project.new
    # project.name = "Name"
    # project.description = "Description"
    expect(@example1.elevator_pitch).to eq("Project Name, Description")
  end
end