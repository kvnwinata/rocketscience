# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  email                 :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#  password_digest       :string(255)
#  category_id           :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :password_digest, :category_id

  has_many :artist_likes
  has_many :artists, :through => :artist_likes 

  has_many :image_likes
  has_many :images, :through => :image_likes

  belongs_to :category

end
