class Cart
  attr_reader :contents

  def initialize(contents)
    if contents
      @contents = contents
    else
      @contents = {}
    end
  end

  def quantity_of(song_id)
    @contents[song_id.to_s].to_i
  end

  def add_song(song_id)
    @contents[song_id.to_s] = quantity_of(song_id) + 1
  end
end
