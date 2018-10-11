class Post < ActiveRecord::Base
    has_many :comments, as: :commentable
    belongs_to :blog
    belongs_to :user
    has_many :messages, :dependent => :destroy
    validates :title, presence: true, length: { in: 7..300 }
    validates :content, presence: true, length: { in: 2..255 }
end
