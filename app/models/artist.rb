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

class Artist < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :description, :email, :name, :phone, :state, :profile_picture, :category_id

  has_many :artist_likes
  has_many :users, :through => :artist_likes 

  has_many :artist_images
  has_many :images, :through => :artist_images

  has_many :artist_categories
  has_many :categories, :through => :artist_categories
  
end
