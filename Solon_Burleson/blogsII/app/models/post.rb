class Post < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :blog
  validates :title, presence: true, length: { minimum: 5 }
end
