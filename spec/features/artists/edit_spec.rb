require 'rails_helper'

RSpec.describe "Editing an artist" do
  describe 'as a user when i visit an artists show page' do
    it "there is a link to edit an artist" do
      kesha = Artist.create(name: "Ke$ha")

      visit "/artists/#{kesha.id}"

      expect(page).to have_link "Edit Artist"
    end

    it "I can edit an artist" do
      kesha = Artist.create(name: "Journey")

      visit "/artists/#{kesha.id}"

      click_on "Edit Artist"

      fill_in :name, with: "Kesha"

      click_on "Update Artist"
      expect(current_path).to eq("/artists")
      expect(page).to have_content("Kesha")
      expect(page).to_not have_content("Ke$ha")
      expect(Artist.last.name).to eq("Kesha")
    end
  end
end
