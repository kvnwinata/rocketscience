class ImagesController < ApplicationController

def analyze
	@category = Category.find(5)
	@artists  = @category.artists
	@samples  = @category.images   

	render :layout => false
end

def like
	user_id = session[:user_id]
	image = Image.find(params[:image_id])

	if user_id > 0 
		new_like = image.image_likes.new
		new_like.user_id = user_id
		new_like.save
	else #guest
		session[:images_id].push[image.id]
	end
	render :nothing => true
end

def unlike
	user_id = session[:user_id]
	image = Image.find(params[:image_id])

	if user_id > 0 
		unliked = image.image_likes.find_by_user_id(user_id)
		if unliked
			unliked.destroy
		end
	else #guest
		for session[:images_id].each_with_index do |val, index|
			if val == image.id
				session[:images_id].delete_at(index)
			end
		end
	end
	render :nothing => true
end

def get_inkbox
	

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
