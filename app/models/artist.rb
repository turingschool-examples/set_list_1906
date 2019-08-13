class Artist <ApplicationRecord
  has_many :songs

  validates_presence_of :name

  def average_play_count
    self.songs.average(:play_count)
  end
end
