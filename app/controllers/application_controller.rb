class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :require_login

  def require_login
    unless session[:user_id] != nil
      redirect_to login_path
    end
  end

end
