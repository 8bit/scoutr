class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #dummy comment
  private

  def current_user
    @current_user ||= Person.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def available_councils
    [@current_user.councils + @current_user.districts.map { |district| district.council } + @current_user.units.map { |unit| unit.district.council }].flatten if @current_user
  end
  helper_method :available_councils
  
  def default_district
    # FIXME: Refine district selection
    if current_user.districts.present?
      current_user.districts.first
    else
      current_user
    end
  end
  
  def require_user
    redirect_to login_path unless current_user
  end
  
  def age(birthday)
    (Time.now.to_s(:number).to_i - birthday.to_time.to_s(:number).to_i)/10e9.to_i
  end
  helper_method :age
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to :back
  end
end
