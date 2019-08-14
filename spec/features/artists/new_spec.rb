# As a visitor
# When I visit the artists index
# And click on 'New Artist'
# Then my current path is '/artists/new'
# and I fill in the artist's name
# Then I click 'Create Artist'
# I am redirected to this new artists show page

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
end
