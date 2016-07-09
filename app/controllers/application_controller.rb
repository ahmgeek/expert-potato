class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_user, :signed_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !!current_user #negating the value to boolean
  end

  protected
  def authenticate_user!
    redirect_to root_path unless signed_in?
  end
end
