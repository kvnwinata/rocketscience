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

class ArtistLike < ActiveRecord::Base
  attr_accessible :artist_id, :user_id

  belongs_to :artist
  belongs_to :user

  has_one :category

end
