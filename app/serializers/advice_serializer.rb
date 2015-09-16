class AdviceSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :user, serializer: UserShortSerializer
  has_many :endorsements, serializer: EndorsementSerializer
  has_many :tags, serializer: TagSerializer
end
