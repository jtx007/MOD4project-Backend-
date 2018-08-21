# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rspotify'

RSpotify.authenticate('ce486c99c7154157808f332e28192c23', 'fe7444b3bb3342cd8dd2bf56b9f348fa')





playlists = RSpotify::Playlist.search('Happy', limit: 10)


first_playlist = playlists.first

puts first_playlist.name

tracks = first_playlist.tracks


first_playlist_song_names = tracks.map do |track|
  track.name
end

puts first_playlist_song_names
