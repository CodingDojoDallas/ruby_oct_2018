class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :comments, as: :imageable, dependent: :destroy


  validates :title, :content, presence: true, length: { minimum: 4 }
end
