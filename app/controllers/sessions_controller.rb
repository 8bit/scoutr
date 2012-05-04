class SessionsController < ApplicationController
  def new
  end

  def create
    user = Person.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to default_district, :flash => { :success => "Logged in." }
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :flash => { :danger => "Logged out!" }
  end
end
