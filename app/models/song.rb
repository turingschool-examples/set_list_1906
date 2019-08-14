class Song < ApplicationRecord
  belongs_to :artist

  def self.total_songs
    Song.count
  end

end
