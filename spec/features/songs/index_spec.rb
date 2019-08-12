require "rails_helper"

describe "songs index page" do
  before :each do
    @song_1 = Song.create(title: "Don't Stop Believin'", length: 303, play_count: 123456)
    @song_2 = Song.create(title: "Never Gonna Give You Up", length: 253, play_count: 987654321)
  end

  it "should show all songs" do
    visit "/songs"
    save_and_open_page
    expect(page).to have_content(@song_1.title)
    expect(page).to have_content("Play Count: #{@song_1.play_count}")
    expect(page).to have_content(@song_2.title)
    expect(page).to have_content("Play Count: #{@song_2.play_count}")
  end
end
