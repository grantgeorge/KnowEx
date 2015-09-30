class Profile < ActiveRecord::Base
	belongs_to :user
	# has_many :posts, through: :user
	# has_many :endorsements, through :user
end
