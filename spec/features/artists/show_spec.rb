require 'rails_helper'

RSpec.describe "Artist Show Page" do
  it "shows artist info" do
    journey = Artist.create(name: "Journey")
    song_1 = journey.songs.create(title: "Don't Stop Believin'", length: 303, play_count: 123456)
    song_2 = journey.songs.create(title: "Wheel In The Sky", length: 500, play_count: 876543)

    visit "/artists/#{journey.id}"

    expect(page).to have_content(journey.name)
    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Length: #{song_1.length}")
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Length: #{song_2.length}")
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end

  it "has a link to add a new song" do
    journey = Artist.create(name: "Journey")

    visit "/artists/#{journey.id}"

    expect(page).to have_link("Add Song")
  end
end
