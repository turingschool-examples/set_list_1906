class SessionsController < ApplicationController
  def new
    render "users/login"
  end

  def create
    user = User.find_by(username: params[:username])
    flash[:success] = "Welcome, #{user.username}!"
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      render "users/login"
    end
  end
end
