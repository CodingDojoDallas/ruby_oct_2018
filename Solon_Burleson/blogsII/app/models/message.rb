class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :author, presence: true, length: { minimum: 2 }
  validates :message, presence: true
end
