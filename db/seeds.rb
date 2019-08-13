# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

journey = Artist.create(name: "Journey")
rickastley = Artist.create(name: "Rick Astley")
song_1 = journey.songs.create(title: "Don't Stop Believin'", length: 300, play_count: 200)
song_2 = journey.songs.create(title: "Wheel In The Sky", length: 500, play_count: 400)
song_3 = rickastley.songs.create(title: "Never Gonna Give You Up", length: 250, play_count: 300)
