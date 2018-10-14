class Blog < ActiveRecord::Base
    has_many :comments, as: :commentable
    has_many :owners
    has_many :users, through: :owners
    has_many :posts, :dependent => :destroy
    validates :name, :description, presence: true, length: { in: 2..255 }
end
