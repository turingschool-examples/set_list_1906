class SongsController < ApplicationController
  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    binding.pry
    artist = Artist.find(params[:artist_id])
    artist.songs.create(song_params)
    redirect_to "/artists/#{artist.id}"
  end

  private

  def song_params
    params.require(:song).permit(:title,:length,:play_count)
  end
end
