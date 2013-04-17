class ImagesController < ApplicationController

def analyze
	@userid = 5
	render :layout => false
end

def like
	render :nothing => true
end

def unlike
	render :nothing => true
end

end
