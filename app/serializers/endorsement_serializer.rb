class EndorsementSerializer < ActiveModel::Serializer
  attributes :id, :text, :created_at
  has_one :user, serializer: UserShortSerializer
  has_many :tags, serializer: TagSerializer
end
