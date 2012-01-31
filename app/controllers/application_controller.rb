class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    @current_user ||= Person.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to :back
  end
end
