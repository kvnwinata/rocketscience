# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  path        :string(255)
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string(255)
#

class Image < ActiveRecord::Base
  attr_accessible :category, :description, :name, :path, :category_id

  has_many :artist_images
  has_many :image_likes

  belongs_to :category

end
