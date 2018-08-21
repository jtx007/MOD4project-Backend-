class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :playlists
  has_many :songs, through: :playlists 
end
