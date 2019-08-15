# As a user
# When I visit an artist show page
# And click on the link to add a new song
# I’m taken to a form where I can create a new song
# After I fill out the form and click “Create Song”
# I’m taken back to the artist show page where I see the new song title,length,play count that I just created.

require "rails_helper"

describe "New Song For Artist" do
  it "can create a song" do
    journey = Artist.create(name: "Journey")
    title = "Any Way You Want It"
    length = 866
    play_count = 63457

    visit "/artists/#{journey.id}"

    click_on "Add Song"

    expect(current_path).to eq("/artists/#{journey.id}/songs/new")

    fill_in :title, with: title
    fill_in :length, with: length
    fill_in :play_count, with: play_count

    click_on "Create Song"

    expect(current_path).to eq("/artists/#{journey.id}")
    expect(page).to have_content(title)
    expect(page).to have_content("Play Count: #{play_count}")
    expect(page).to have_content("Length: #{length}")
  end
end
