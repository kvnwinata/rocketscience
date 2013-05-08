class HomeController < ApplicationController

def index
	gon.page_type = "index";
	if session[:success] != nil
		flash[:notice] = "Welcome back!"
		session[:success] = nil
	end
end

def example
	gon.page_type = "example";
	@image = Image.find(1)

end

end
