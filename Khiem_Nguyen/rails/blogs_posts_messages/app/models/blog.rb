class Blog < ActiveRecord::Base
    has_many :posts, :dependent => :destroy
    validates :name, :description, presence: true, length: { in: 2..255 }
end
