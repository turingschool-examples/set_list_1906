require 'rails_helper'

RSpec.describe PlaylistSong do
  describe 'relationship' do
    it {should belong_to :playlist}
    it {should belong_to :song}
  end
end
