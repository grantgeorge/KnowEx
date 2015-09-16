class Advice < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :endorsements, as: :endorseable
  has_many :tags, through: :endorsements
end
