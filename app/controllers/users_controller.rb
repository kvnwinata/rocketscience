class UsersController < ApplicationController

def login
	gon.page_type = "login";
	@new_user = User.new
end

def prompt

end

def profile
	gon.page_type = "profile";
	# only render static profile for John Smith for now
end

def login_submit

end

def new

end


end
