# == Schema Information
#
# Table name: image_likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  image_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ImageLikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
