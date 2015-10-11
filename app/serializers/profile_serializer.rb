class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :introduction
  has_one :user, serializer: UserShortSerializer
end
