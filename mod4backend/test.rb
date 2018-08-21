require 'rspotify'

RSpotify.authenticate('ce486c99c7154157808f332e28192c23', 'fe7444b3bb3342cd8dd2bf56b9f348fa')





playlists = RSpotify::Playlist.search('Happy', limit: 10)


first_playlist = playlists.first

puts first_playlist.id



# puts first_playlist.tracks.first.external_urls['spotify']

# tracks = first_playlist.
#
#
# first_playlist_genres = tracks.map do |track|
#   track.artists.map do |artist|
#     artist.genres
#   end
# end
#
# first_playlist_song_names = tracks.map do |track|
#   track.name
# end
#
# puts first_playlist_genres
