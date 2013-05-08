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

end
