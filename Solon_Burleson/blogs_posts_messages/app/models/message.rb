class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, presence: true, length: { maximum: 255 }
  validates :message, presence: true, length: { minimum: 15 }
end
