class Dojo < ActiveRecord::Base
    validates :branch, :street, :city, presence: true, length: { in: 2..255 }
    validates_length_of :state, :is => 2
end
