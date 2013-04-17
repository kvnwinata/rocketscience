class HomeController < ApplicationController

def index
end

def example
	@image = Image.find(1)

end

end
