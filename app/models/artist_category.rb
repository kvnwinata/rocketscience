class ArtistCategory < ActiveRecord::Base
  attr_accessible :artist_id, :category_id

  belongs_to :artist
  belongs_to :category
end
