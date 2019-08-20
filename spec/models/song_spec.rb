require 'rails_helper'

describe Song, type: :model do
  describe "relationships" do
    it { should belong_to :artist}
    it { should have_many :playlist_songs}
    it { should have_many(:playlists).through(:playlist_songs)}
  end

  describe "class methods" do
    it "count total number of songs" do
      journey = Artist.create(name: "Journey")
      rickastley = Artist.create(name: "Rick Astley")
      song_1 = journey.songs.create(title: "Don't Stop Believin'", length: 303, play_count: 123456)
      song_2 = rickastley.songs.create(title: "Never Gonna Give You Up", length: 253, play_count: 987654321)

      expect(Song.total_songs).to eq(2)
    end
  end
end
