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

Category.create(
    :id => 1,
    :name => "American Traditional",
    :description => "xxx"
    )
Category.create(
    :id => 2,
    :name => "Black and Grey",
    :description => "xxx"
    )
Category.create(
    :id => 3,
    :name => "Horror and Gore",
    :description => "xxx"
    )
Category.create(
    :id => 4,
    :name => "Japanese Traditional",
    :description => "xxx"
    )
Category.create(
    :id => 5,
    :name => "Nature Inspired",
    :description => "xxx"
    )
Category.create(
    :id => 6,
    :name => "New School",
    :description => "xxx"
    )
Category.create(
    :id => 7,
    :name => "Tribal",
    :description => "xxx"
    )

Artist.create(
    :id => 1,
    :name => "John Smith",
    :description => "The best artist you can find to design traditional american.",
    :address1 => "Cool Shop",
    :address2 => "500 Memorial Drive",
    :city => "Cambridge",
    :state => "MA",
    :phone => "61712346658",
    :email => "johnsmith@tattoo.ink",
    :profile_picture => "profile/Jake.jpg"
    )
Artist.create(
    :id => 2,
    :name => "Sim Sam",
    :description => "The best artist you can find to design gore/horror tattoo.",
    :address1 => "Best Shop",
    :address2 => "500 Memorial Drive",
    :city => "Cambridge",
    :state => "MA",
    :phone => "61712346658",
    :email => "johnsmith@tattoo.ink",
    :profile_picture => "profile/sam.png"
    )
Artist.create(
    :id => 3,
    :name => "Ken Watanabe",
    :description => "The best artist you can find to design traditional japanese.",
    :address1 => "Ocean Shop",
    :address2 => "500 Memorial Drive",
    :city => "Cambridge",
    :state => "MA",
    :phone => "61712346658",
    :email => "ken@tattoo.ink",
    :profile_picture => "profile/kwatanabe.jpg"
    )
Artist.create(
    :id => 4,
    :name => "Harry McDonald",
    :description => "The best artist you can find to design greasy tattoos.",
    :address1 => "Tiam's Shop",
    :address2 => "500 Memorial Drive",
    :city => "Cambridge",
    :state => "MA",
    :phone => "61712346658",
    :email => "harry@tattoo.ink",
    :profile_picture => "profile/harry.jpg"
    )
Artist.create(
    :id => 5,
    :name => "Will Gates",
    :description => "The best artist you can find to design techno tattoos.",
    :address1 => "Kevin's Shop",
    :address2 => "500 Memorial Drive",
    :city => "Cambridge",
    :state => "MA",
    :phone => "61712346658",
    :email => "will@tattoo.ink",
    :profile_picture => "profile/wgates.jpg"
    )
Artist.create(
    :id => 6,
    :name => "Sukrit Kammal",
    :description => "The best artist you can find to design techno tattoos.",
    :address1 => "Ink Patch",
    :address2 => "12 Wyatt Ave",
    :city => "Cambridge",
    :state => "MA",
    :phone => "617-279-4703",
    :email => "skk@tattoo.ink",
    :profile_picture => "profile/sukrit.jpg"
    )

Artist.create(
    :id => 7,
    :name => "Fred Todd",
    :description => "The best artist you can find to design techno tattoos.",
    :address1 => "Ink Bucket",
    :address2 => "345 Columbia St",
    :city => "Cambridge",
    :state => "MA",
    :phone => "617-730-8467",
    :email => "fred@bucket.ink",
    :profile_picture => "profile/fred.jpg"
    )
Artist.create(
    :id => 8,
    :name => "Laura Marsha",
    :description => "The best artist you can find to design techno tattoos.",
    :address1 => "Creative Art",
    :address2 => "102 Mass Ave",
    :city => "Cambridge",
    :state => "MA",
    :phone => "617-302-5749",
    :email => "lauram@c-art.com",
    :profile_picture => "profile/laura.jpg"
    )
Artist.create(
    :id => 9,
    :name => "Jenny Mark",
    :description => "The best artist you can find to design techno tattoos.",
    :address1 => "Arts for All",
    :address2 => "10 Highland St",
    :city => "Somerville",
    :state => "MA",
    :phone => "857-222-3344",
    :email => "jmark@aa.com",
    :profile_picture => "profile/jenny.jpg"
    )
Artist.create(
    :id => 10,
    :name => "Kate Lee",
    :description => "The best artist you can find to design techno tattoos.",
    :address1 => "Arts for All",
    :address2 => "10 Highland St",
    :city => "Somerville",
    :state => "MA",
    :phone => "857-222-3344",
    :email => "klee@aa.com",
    :profile_picture => "profile/kate.jpg"
    )


