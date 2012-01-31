class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    @current_user ||= Person.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def available_councils
    [@current_user.councils + @current_user.districts.map { |district| district.council } + @current_user.units.map { |unit| unit.district.council }].flatten if @current_user
  end
  helper_method :available_councils
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to :back
  end
end
