class SongsController < ApplicationController
  def new
    @artist_id = Artist.find(params[:artist_id]).id
  end
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    artist = Artist.find(params[:artist_id])
    artist.songs.create(song_params)
    redirect_to "/artists/#{artist.id}"
  end

  private

  def song_params
    params.permit(:title,:length,:play_count)
  end
end
