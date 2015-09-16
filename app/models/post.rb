class Post < ActiveRecord::Base
  belongs_to :user
  has_many :advices
  has_many :endorsements, as: :endorseable
  has_many :advice_endorsements, through: :advices, :source => :endorsements
  has_many :tags, through: :endorsements
  has_many :advice_endorsement_tags, through: :advice_endorsements, :source => :tags
end
