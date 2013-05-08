class UsersController < ApplicationController

skip_before_filter :require_login, :except => :profile

def login
	gon.page_type = "login"
	@current_page = "login"
	@user = User.new
end

def logout
	session[:user_id] = nil
	flash[:notice] = "You have successfully logged out."
	render 'login'
end

def guest
	if session[:images_id] == nil
		session[:images_id] = Array.new 
	end
	session[:user_id] = -1
	# go to home
	redirect_to root_path
end

def profile
	gon.page_type = "profile";
	# only render static profile for John Smith for now

	@user = User.new

	@category = @user.category
	@artists = @user.artists

end

def login_submit
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      # Sign the user in and redirect to the user's show page.
      session[:user_id] = user.id
      render :text => "success"
    else
      render :text => "fail"
    end
end

def new
	@user = User.new(params[:user])

	if @user.save
		flash[:notice] = "Welcome! Start by selecting images you like"
        session[:user_id] = @user.id 
        redirect_to root_path
	else
		gon.page_type = "login"
		@current_page = "login"
		render 'login'
	end
end

def clear
	reset_session
	redirect_to login_path
end

def prompt
end

end