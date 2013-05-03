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

require 'test_helper'

class ArtistImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
