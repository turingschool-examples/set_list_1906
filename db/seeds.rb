# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.destroy_all
Artist.destroy_all

journey = Artist.create(name: "Journey")
rick = Artist.create(name: "Rick Astley")
journey.songs.create!(title: "Don't Stop Believin'", length: 303, play_count: 123456)
rick.songs.create!(title: "Never Gonna Give You Up", length: 253, play_count: 987654321)
