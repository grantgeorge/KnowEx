class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :published
  has_one :user, serializer: UserShortSerializer
end
