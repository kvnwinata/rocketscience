class ArtistsController < ApplicationController

def search
	gon.page_type = "search"
	# render the search page
end

# Handles ajax requests for artist info
# for the piazza-like interface when a
# tab for an artist is clicked
def info
	@artist = Artist.find(params[:artist_id])

	@images = @artist.images

	render :layout => false
end

def like
	user_id = session[:user_id]
	artist = Artist.find(params[:artist_id])

	if user_id > 0 
		new_like = artist.artist_likes.new
		new_like.user_id = user_id
		new_like.save
	else #guest
		# if !session[:images_id].include?(image.id)
		# 	session[:images_id].push(image.id)
		# end
	end
	render :nothing => true
end

def unlike
	user_id = session[:user_id]
	artist = Artist.find(params[:artist_id])

	if user_id > 0 
		unliked = artist.artist_likes.find_by_user_id(user_id)
		if unliked
			unliked.destroy
		end
	else #guest
		#session[:images_id].delete(image.id)
	end
	render :nothing => true
end

def get_category
	require 'json'
	category_name = params[:category]
	if category_name == "All"
		all_artists = Artist.all

		artists = Hash.new
		all_artists.each do |artist|
			artists[artist.id] = {
			 'name' => artist.name,
			 'email' => artist.email,
			 'address1' => artist.address1,
			 'address2' => artist.address2
			} 
		end 
		render :json => artists.to_json
	else
		@category = Category.find_by_name(category_name) 
		artists = Hash.new
		@category.artists.all.each do |artist|
			artists[artist.id] = {
			 'name' => artist.name,
			 'email' => artist.email,
			 'address1' => artist.address1,
			 'address2' => artist.address2
			} 
		end 
		render :json => artists.to_json
	end
end

end
