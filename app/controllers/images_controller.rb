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
		if !session[:images_id].include?(image.id)
			session[:images_id].push(image.id)
		end
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
		logger.debug session[:images_id]
		session[:images_id].each_with_index do |val, index|
			if val.to_s() == image.id.to_s()
				session[:images_id].delete_at(index)
			end
		end
		logger.debug "ABCD"
		logger.debug session[:images_id]
	end
	render :nothing => true
end

def get_inkbox
	require 'json'

	user_id = session[:user_id]

	inkbox = Hash.new

	if user_id > 0
		# get data from database
		user = User.find(user_id)
		user.images.each do |image|
			inkbox[image.id] = {'category_name' => image.category.name, 'path' => "/assets/"+image.path+image.name } 
		end
	else
		# get data from session[:images_id]
		session[:images_id].each do |image_id|
			image = Image.find(image_id)
			inkbox[image.id] = {'category_name' => image.category.name, 'path' => "/assets/"+image.path+image.name } 
		end
	end
	render :json => inkbox.to_json
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
			images[image.id] = {'category_name' => image.category.name, 'path' => "/assets/"+image.path+image.name } 
		end 
		render :json => images.to_json
	else
		@category = Category.find_by_name(category_name) 
		images = Hash.new
		@category.images.all.each do |image|
			images[image.id] = {'category_name' => image.category.name, 'path' => "/assets/"+image.path+image.name } 
		end 
		render :json => images.to_json
	end
end

end
