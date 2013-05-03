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

class ImageLike < ActiveRecord::Base
  attr_accessible :image_id, :user_id

  belongs_to :user
  belongs_to :image

end
