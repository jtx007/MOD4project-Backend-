class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :player
  belongs_to :user
  has_many :songs
end
