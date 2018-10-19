class Form < ActiveRecord::Base
	validates :name, :location, :favorite_language, :comment, presence: true
end
