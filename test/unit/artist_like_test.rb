# == Schema Information
#
# Table name: artist_likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ArtistLikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
