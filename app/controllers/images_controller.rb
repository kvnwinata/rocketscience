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

def get_category
	require 'json'
	category_name = params[:category]
	if category_name == "random"
		num_images = 20
		all_images = Image.all
		all_images = all_images.sample(num_images)

		images = Hash.new
		all_images.each do |image|
			images[image.id] = image.path + image.name
		end 
		render :json => images.to_json
	else
		@category = Category.find_by_name(category_name) 
		images = Hash.new
		@category.images.all.each do |image|
			images[image.id] = image.path + image.name
		end 
		render :json => images.to_json
	end
end

end
