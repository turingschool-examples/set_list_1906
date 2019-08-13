require "rails_helper"

describe "artist show page" do
  before :each do
    @journey = Artist.create(name: "Journey")
    @rickastley = Artist.create(name: "Rick Astley")
    @song_1 = @journey.songs.create(title: "Don't Stop Believin'", length: 300, play_count: 200)
    @song_2 = @journey.songs.create(title: "Wheel In The Sky", length: 500, play_count: 400)
    @song_3 = @rickastley.songs.create(title: "Never Gonna Give You Up", length: 250, play_count: 300)
  end

  it "should show one artist" do
    visit "/artists/#{@journey.id}"

    expect(page).to have_content(@song_1.title)
    expect(page).to have_content("Play Count: #{@song_1.play_count}")
    expect(page).to have_content(@song_2.title)
    expect(page).to have_content("Play Count: #{@song_2.play_count}")
  end
end
