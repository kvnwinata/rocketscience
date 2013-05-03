# == Schema Information
#
# Table name: artists
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  description     :string(255)
#  address1        :string(255)
#  address2        :string(255)
#  city            :string(255)
#  state           :string(255)
#  phone           :string(255)
#  email           :string(255)
#  profile_picture :string(255)
#  category_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
