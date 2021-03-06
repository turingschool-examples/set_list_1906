require 'rails_helper'

RSpec.describe "Adding an item to the cart" do
  it "displays a message" do
    journey = Artist.create(name: "Journey")
    rick = Artist.create(name: "Rick Astley")

    dont_stop = journey.songs.create!(title: "Don't Stop Believin'", length: 303, play_count: 123456)
    journey.songs.create!(title: "Wheel in the Sky", length: 488, play_count: 987)
    rick.songs.create!(title: "Never Gonna Give You Up", length: 253, play_count: 987654321)

    visit "/songs"

    within "#song-#{dont_stop.id}" do
      click_button "Add to Cart"
    end

    expect(current_path).to eq("/songs")
    expect(page).to have_content("You now have 1 copy of #{dont_stop.title} in your cart.")
  end

  it "displays a message for multiple songs" do
    journey = Artist.create(name: "Journey")
    rick = Artist.create(name: "Rick Astley")

    dont_stop = journey.songs.create!(title: "Don't Stop Believin'", length: 303, play_count: 123456)
    journey.songs.create!(title: "Wheel in the Sky", length: 488, play_count: 987)
    rick.songs.create!(title: "Never Gonna Give You Up", length: 253, play_count: 987654321)

    visit "/songs"

    within "#song-#{dont_stop.id}" do
      click_button "Add to Cart"
    end

    within "#song-#{dont_stop.id}" do
      click_button "Add to Cart"
    end

    expect(page).to have_content("You now have 2 copies of #{dont_stop.title} in your cart.")
  end
end
