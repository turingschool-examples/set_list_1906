class Artist <ApplicationRecord
  has_many :songs

  validates_presence_of :name

  def average_play_count
    # binding.pry
    self.songs.average(:play_count)


    # play_count_sum = self.songs.sum do |song|
    #                   song.play_count
    #                 end
    # play_count_sum/self.songs.count
  end
end
