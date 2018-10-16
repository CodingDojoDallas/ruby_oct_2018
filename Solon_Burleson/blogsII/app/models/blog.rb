class Blog < ActiveRecord::Base
    has_many :owners, dependent: :destroy
    has_many :posts, dependent: :destroy
    validates :name, presence: true, length: { minimum: 5, maximum: 255 }
    validates :description, presence: true, length: { minimum: 5 }
end
