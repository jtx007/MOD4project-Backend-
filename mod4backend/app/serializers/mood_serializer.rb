class MoodSerializer < ActiveModel::Serializer
  attributes :id, :mood
  belongs_to :user
end
