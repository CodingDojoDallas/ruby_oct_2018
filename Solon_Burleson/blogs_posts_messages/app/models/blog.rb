class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    validates :name, presence: true, length: { maximum: 255 }
    validates :description, presence: true
end
