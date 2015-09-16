class Advice < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_many :endorsements, as: :endorseable
end
