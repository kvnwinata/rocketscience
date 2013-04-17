class Artist < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :description, :email, :name, :phone, :state, :profile_picture
end
