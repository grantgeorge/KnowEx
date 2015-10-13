class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :posts, through: :user, :source => :posts
end
