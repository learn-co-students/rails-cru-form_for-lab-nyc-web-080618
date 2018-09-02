# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = Artist.create([
  {name: "artist1"},
  {name: "artist2"},
  {name: "artist3"},
  {name: "artist4"}
  ])

genres = Genre.create([
  {name: "genre1"},
  {name: "genre2"},
  {name: "genre3"},
  {name: "genre4"}
  ])

songs = Song.create([
  {name: "song name 1", artist_id: 1, genre_id: 2},
  {name: "song name 2", artist_id: 3, genre_id: 2},
  {name: "song name 3", artist_id: 4, genre_id: 3}
  ])
