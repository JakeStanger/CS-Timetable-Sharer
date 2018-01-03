class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  # Used for getting the current user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Used to prohibit access to logged in users
  def require_user
    redirect_to '/login' unless current_user
  end
end
