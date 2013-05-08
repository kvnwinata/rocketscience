class ImagesController < ApplicationController

def analyze

	user_id = session[:user_id]
	category_counts = Array.new(Category.count, 0)

	if user_id > 0 
		user = User.find(user_id)
		user.images.each do |image|
			category_counts[image.category_id-1] = category_counts[image.category_id-1] + 1 
		end
	else 
		session[:images_id].each do |image_id|
			image = Image.find(image_id)
			category_counts[image.category_id-1] = category_counts[image.category_id-1] + 1 
		end 
	end
	
	# get highest count
	max = -1
	max_index = -1
	category_counts.each_with_index do |val, index| 
		if max < val
			max = val
			max_index = index
		end
	end

	@category = Category.find(max_index+1)
	@artists  = @category.artists
	@samples  = @category.images 

	if user_id > 0 
		User.find(user_id).category_id = @category.id
  	end

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
		session[:images_id].delete(image.id)
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
