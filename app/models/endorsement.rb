class Endorsement < ActiveRecord::Base

  # Set logical max number of tags per endorsement
  MAX_TAGS = 10

  # All Endorsements must require a user
   validates :user, presence: true
  # All endorsements require at least one tag
    validates :tags, length: { minimum: 1}, message: "Please include at least one tag."
  # Set logical maximum for tags
  # validates :tags, length: { maximum: MAX_TAGS}, message: "Tags don't grow on trees!"

  belongs_to :user
  belongs_to :endorseable, polymorphic: true
  has_many :tags, as: :taggable
end
