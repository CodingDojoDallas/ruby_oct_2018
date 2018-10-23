class Blog < ActiveRecord::Base
    belongs_to :user
    has_many :owners
    has_many :comments, as: :commentable
    has_many :users, through: :owners
    has_many :posts, dependent: :destroy
    validates :name, :description, presence: true
end
