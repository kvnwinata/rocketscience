# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Table name: images
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  path        :string(255)
#  category    :string(255)

Image.create(
	:id => 1,
	:name => "image1",
	:description => "image1",
	:path => "image1",
	:category => "category")