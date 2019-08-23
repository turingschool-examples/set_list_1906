class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def create
    artist = Artist.create(artist_params)
    if artist.save
      flash[:success] = "Artist Created"
      redirect_to "/artists/#{artist.id}"
    else
      flash[:error] = "You must enter an artist name"
      redirect_to "/artists/new"
    end
  end

  private
  def artist_params
    params.permit(:name)
  end
end
