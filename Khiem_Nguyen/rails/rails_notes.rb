

//CREATING NEW PROJECT
rails new project_name
cd project_name
rails g model

rails g model User first_name:string last_name:string email:string password:string age:integer

rake db:migrate

rail console

//IN RAIL CONSOLE
Hirb.enable

//.new & .save
user1 = User.new
user1.first_name = "John"
user1.last_name = "Doe"
user1.password = "secret"
user1.save

OR

user2 = User.new(first_name: "Jane", last_name:"Doe", email:"janedoe@email.com", age:35)
user2.save

//.create with AUTO SAVE
User.create(first_name:"Jon", last_name:"Stark", email:"jon@thewall.com", age:17)

//READING DATA
# retrieving all rows in the users table
users = User.all
# retrieving the first row in the users table
user = User.first
# retrieving the second row in the users table
user2 = User.second
# retrieving the last row in the users table
last_user = User.last
# retrieving the user with id = 2
user = User.find(2)
# retrieving the first user with the first name John
john = User.find_by(first_name: "John")
# retrieving all the users with the first name John
johns = User.where(first_name: "John")
# retrieving all users with the last name Doe but only selecting the first name and last name column
does = User.where(last_name: "Doe").select(:first_name, :last_name)

//UPDATING DATA
# retrieving the user, setting the first name attribute to a different value then saving the record
user = User.find(1)
user.first_name = "Some Other Name"
user.last_name = "Some Other Last Name"
user.save

# retrieving the user then updating and saving multiple attributes
user = User.last
user.update(first_name: "James", last_name: "Doe", age: 40)

//DELETE
#Both .destroy and .delete methods will execute a DELETE SQL query to delete that record according to it's id. However, destroy allows callbacks to be executed where delete does not. We will talk about callbacks in a future tab.
user = User.first.destroy
user2 = User.last.delete

//VALIDATION
in the folder project_name/app/models/user.rb

class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end


:length - validates the length of an attribute's value
    :minimum, :maximum, :in, :is

:numericality - validates whether an attribute is a numeric value

:odd, :even, and many others

:presence - validates that the specified attributes are not empty

:uniqueness - validates whether the value is unique in the corresponding database table. NOTE: always create a unique index in the database too.

:confirmation - use this when you have two text fields that should receive exactly the same content; assumes the second field name has "_confirmation" appended

validates_associated - use this when your model has associations with other models and they also need to be validated

:acceptance - validate whether a checkbox was checked when a form was submitted (usually for 'terms and conditions')

also, get familiar with :message and :on

more validations on documentation
https://guides.rubyonrails.org/active_record_validations.html

'
//Callbacks and Custom Methods
    place these methods into your project_name/app/models/user.rb file

class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  # this callback will run before saving on create and update
  before_save :downcase_email

  # this callback will run after creating a new user
  after_create :successfully_created

  # this callback will run after updating an existing user
  after_update :successfully_updated

  # this callback will only run on creating a record to ensure a default age of 0
  before_validation :default_age, on: [:create]

  private
    def downcase_email
      self.email.downcase!
    end

    def successfully_created
      puts "Successfully created a new user"
    end
    def successfully_updated
      puts "Successfully updated a existing user"
    end

    def default_age
      self.age = 0 unless self.age?
    end
end

class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  # creating a custom instance method. self refers to the ActiveRecord object
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # creating a custom class method. self refers to the User model
  def self.average_age
      self.sum(:age) / self.count
  end

  # ... omitted callback code for brevity
end
