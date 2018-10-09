class Blog < ActiveRecord::Base
	has_many :owners
	has_many :users, through: :owners
	has_many :posts
	has_many :messages, through: :posts

	validates :name, :desc, presence: true, length: { minimum: 4 }
end

# User.joins(:blogs).select()