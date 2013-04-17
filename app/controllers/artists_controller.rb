class ArtistsController < ApplicationController

def search
	gon.page_type = "artist_search"
	# render the search page
end

# Handles ajax requests for artist info
# for the piazza-like interface when a
# tab for an artist is clicked
def info
	@artist = Artist.find(params[:artist_id])

	@images = []
	@images.push(Image.find(@artist.id*6))
	@images.push(Image.find(@artist.id*6+1))
	@images.push(Image.find(@artist.id*6+2))
	@images.push(Image.find(@artist.id*6+3))
	@images.push(Image.find(@artist.id*6+4))
	@images.push(Image.find(@artist.id*6+5))

	render :layout => false
end

def like
	render :nothing => true
end

def unlike
	render :nothing => true
end

end
