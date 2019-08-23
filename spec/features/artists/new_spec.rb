require 'rails_helper'

RSpec.describe "Creating a new artist" do
  it "has a link on the index page to a new artist form" do
    visit '/artists'

    click_on "New Artist"

    expect(current_path).to eq("/artists/new")

    fill_in :name, with: "Journey"

    click_on "Create Artist"

    new_artist = Artist.last
    expect(current_path).to eq("/artists/#{new_artist.id}")
    expect(page).to have_content("Journey")
  end
  it "I can't create a new artist if field is not filled out" do
    visit '/artists/new'

    click_on "Create Artist"

    expect(page).to have_content("You must enter an artist name")
    # expect(page).to have_link("Create Artist")
  end
end
