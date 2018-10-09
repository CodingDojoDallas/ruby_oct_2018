class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :imageable, dependent: :destroy

  validates :author, :message, presence: true, length: { minimum: 4 }
  # validates 


end
