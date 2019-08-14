require 'rails_helper'

RSpec.describe "Song Show Page" do
  it "should show the song and its artist" do
    britney = Artist.create!(name: "Britney Spears")
    song = britney.songs.create!(title: "Hit Me Baby One More Time", length: 534, play_count: 87320)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to have_content(britney.name)
  end
end
