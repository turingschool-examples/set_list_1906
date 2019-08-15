require 'rails_helper'

RSpec.describe "Artist Index Page" do
  it "can list all artists" do
    journey = Artist.create(name: "Journey")
    rickastley = Artist.create(name: "Rick Astley")

    visit '/artists'

    expect(page).to have_content(journey.name)
    expect(page).to have_content(rickastley.name)
  end
end
