# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :artist_categories
  has_many :artists, :through => :artist_categories
  has_many :users
  has_many :images
  
end
