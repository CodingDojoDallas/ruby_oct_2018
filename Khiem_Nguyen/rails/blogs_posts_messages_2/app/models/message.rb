class Message < ActiveRecord::Base
    has_many :comments, as: :commentable
    belongs_to :post
    belongs_to :user
    validates :author, presence: true, length: { in: 2..255 }
    validates :message, presence: true, length: { minimum: 15 }
end
