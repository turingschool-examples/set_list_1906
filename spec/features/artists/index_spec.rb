require "rails_helper"

describe "artist index page" do
  before :each do
    @journey = Artist.create(name: "Journey")
    @rickastley = Artist.create(name: "Rick Astley")
  end

  it "should show all artists" do
    visit "/artists"

    expect(page).to have_content(@journey.name)
    expect(page).to have_content(@rickastley.name)
  end
end
