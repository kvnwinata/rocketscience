# == Schema Information
#
# Table name: artist_images
#
#  id          :integer          not null, primary key
#  image_id    :integer
#  artist_id   :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ArtistImage < ActiveRecord::Base
  attr_accessible :artist_id, :image_id

  belongs_to :artist
  belongs_to :image

end
