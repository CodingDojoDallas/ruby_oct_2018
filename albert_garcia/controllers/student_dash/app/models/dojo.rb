class Dojo < ActiveRecord::Base
    has_many :students, dependent: :destroy
    validates :branch, :street, :city, presence: true, length: { in: 2..255 }
    validates_length_of :state, :is => 2
end
