# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  path        :string(255)
#  category    :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string(255)
#

class Image < ActiveRecord::Base
  attr_accessible :category, :description, :name, :path
end
