class ArtistsController < ApplicationController
  def index
  end

  def new
  end

  def create
    artist = Artist.create!(artist_params)
    redirect_to "/artists/#{artist.id}"
  end

  private
  def artist_params
    params.permit(:name)
  end
end
