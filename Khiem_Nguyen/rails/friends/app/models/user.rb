class User < ActiveRecord::Base
    has_many :friends, through: :friendships, dependent: :destroy
    has_many :friendships
end
