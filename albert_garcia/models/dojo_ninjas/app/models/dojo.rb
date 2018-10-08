class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy
    validates :name, :city, presence: true, length: { in: 2..40 }
    validates_length_of :state, :is => 2
end
