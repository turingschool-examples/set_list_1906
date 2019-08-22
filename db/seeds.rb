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
blink = Artist.create(name: "Blink-182")

journey.songs.create!(title: "Don't Stop Believin'", length: 303, play_count: 123456)
journey.songs.create!(title: "Wheel in the Sky", length: 673, play_count: 922)

rick.songs.create!(title: "Never Gonna Give You Up", length: 253, play_count: 987654321)

blink.songs.create!(title: "Miss You", length: 544, play_count: 178498)
blink.songs.create!(title: "What's My Age Again", length: 722, play_count: 47299)
