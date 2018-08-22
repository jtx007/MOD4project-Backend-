class User < ApplicationRecord
  has_many :playlists
  has_many :songs, through: :playlists
  has_many :moods

  validates :username, presence: true
end
