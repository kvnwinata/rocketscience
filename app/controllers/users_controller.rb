class UsersController < ApplicationController

skip_before_filter :require_login, :except => :profile


def login
	gon.page_type = "login";
	@new_user = User.new
end

def guest
	if session[:images_id] == nil
		session[:images_id] = Array.new 
	end
	session[:user_id] = -1
	# go to home
	redirect_to root_path
end

def prompt

end

def profile
	gon.page_type = "profile";
	# only render static profile for John Smith for now

	@user = User.new

	@category = @user.category
	@artists = @user.artists

end

def login_submit

end

def new

end


end
