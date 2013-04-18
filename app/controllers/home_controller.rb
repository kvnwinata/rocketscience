class HomeController < ApplicationController

def index
	gon.page_type = "index";
end

def example
	gon.page_type = "example";
	@image = Image.find(1)

end

end
