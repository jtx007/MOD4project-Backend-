require 'rspotify'
class Playlist < ApplicationRecord
  belongs_to :user
  has_many :songs

  def self.create_playlist(term, user)
    RSpotify.authenticate('ce486c99c7154157808f332e28192c23', 'fe7444b3bb3342cd8dd2bf56b9f348fa')
    playlists = RSpotify::Playlist.search(term, limit: 10)
    new_playlist = playlists.sample
    new_playlist1 = Playlist.create(name: new_playlist.name, user_id: user, player: new_playlist.id)

    new_playlist.tracks.map do |track|

      Song.create(name: track.name, artist: track.artists[0].name, playlist_id: new_playlist1.id, player: track.id)
    end
    new_playlist1
  end

end
