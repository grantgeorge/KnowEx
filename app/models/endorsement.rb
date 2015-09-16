class Endorsement < ActiveRecord::Base
  belongs_to :user
  belongs_to :endorseable, polymorphic: true
  has_many :tags, as: :taggable
end
