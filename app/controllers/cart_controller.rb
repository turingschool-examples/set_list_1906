class CartController < ApplicationController
  include ActionView::Helpers::TextHelper

  def add_song
    cart = Cart.new(session[:cart])
    song = Song.find(params[:song_id])
    cart.add_song(song.id)
    session[:cart] = cart.contents
    flash[:success] = "You now have #{pluralize(cart.quantity_of(song.id), "copy")} of #{song.title} in your cart."
    redirect_to '/songs'
  end
end
