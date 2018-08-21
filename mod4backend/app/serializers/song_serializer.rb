class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :player
  belongs_to :playlist
end
