class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :require_login

  def require_login

  	gon.user_status = "nil"

    unless session[:user_id] != nil
      redirect_to login_path
    end
  end
end
