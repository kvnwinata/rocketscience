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
	render :nothing => true
end

def unlike
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
