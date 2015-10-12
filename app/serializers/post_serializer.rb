class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :published, :created_at
  has_one :user, serializer: UserShortSerializer
  has_many :endorsements, serializer: EndorsementSerializer
  has_many :advices, serializer: AdviceSerializer
  has_many :tags, serializer: TagSerializer

  def tags
    object.tags + object.advice_endorsement_tags
  end
end
