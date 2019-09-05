class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :current_admin?

  def current_admin?
    current_user && current_user.admin?
  end

  def current_user
    ##code that returns current user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
