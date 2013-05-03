class ImagesController < ApplicationController

def analyze

	@category = Category.find(5)
	@artists  = @category.artists
	@samples  = @category.images   

	render :layout => false
end

def like
	render :nothing => true
end

def unlike
	render :nothing => true
end

end
