class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :introduction, :posts
  has_one :user, serializer: UserShortSerializer
  has_many :posts, through: :user, serializer: PostSerializer
end
