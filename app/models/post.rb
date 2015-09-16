class Post < ActiveRecord::Base
  belongs_to :user
  has_many :advices
  has_many :endorsements, as: :endorseable
  has_many :advice_endorsements, through: :advices, :source => :endorsements
end
