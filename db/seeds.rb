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
    :description => "Popular among all ages, nature inspired tattoos aim to reflect this passion towards the natural. Nature, in the broadest sense, is equivalent to the natural world, physical world, or material world. "Nature" refers to the phenomena of the physical world, and also to life in general. It ranges in scale from the subatomic to the cosmic. The word nature is derived from the Latin word natura, or "essential qualities, innate disposition", and in ancient times, literally meant "birth". Natura was a Latin translation of the Greek word physis (φύσις), which originally related to the intrinsic characteristics that plants, animals, and other features of the world develop of their own accord. The concept of nature as a whole, the physical universe, is one of several expansions of the original notion; it began with certain core applications of the word φύσις by pre-Socratic philosophers, and has steadily gained currency ever since. This usage was confirmed during the advent of modern scientific method in the last several centuries."
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

Image.create(
    :id => 1,
    :name => "tumblr_lxh1abULhm1qkfwf2o1_500.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 2,
    :name => "american-traditional-tattoo-flash-5158c6ed-sz450x300-animate.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 3,
    :name => "AmericanTraditionalWeb-Ready.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 4,
    :name => "2381513772_cf97eb6ec7.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 5,
    :name => "tumblr_mfezmiAyCQ1qceyj5o1_500.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 6,
    :name => "tottoos.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 7,
    :name => "traditional-tattoo-eagle-murray-sell.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 8,
    :name => "chest-piece-tattoo-m.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 9,
    :name => "tumblr_macs9rU5Em1qfp499o1_500.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 10,
    :name => "420409_10151199209227159_813968611_n.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 11,
    :name => "001_06.JPG",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 12,
    :name => "Rk66X.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 13,
    :name => "25684660345257793NXMjEF54c.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 14,
    :name => "tumblr_me4c5c2Qob1rjli03o1_500.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 15,
    :name => "tumblr_l68a4kXB5Q1qcmz1jo1_500.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 16,
    :name => "0896597989interior01.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 17,
    :name => "Cherry-blossom-Color-Japanese-Tattoo.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 18,
    :name => "images-1.jpeg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 19,
    :name => "images.jpeg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 20,
    :name => "japanese_tattoo_flower_peony.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 21,
    :name => "japanese-tattoo-01.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 22,
    :name => "japanese-tattoo-gallery2.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 23,
    :name => "japanese042.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 24,
    :name => "t1_Japanese-Tattoos-samurai_705.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 25,
    :name => "t1_Japanese-Tattoos-samurai_755.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 26,
    :name => "This-cherry-blossom-tree-tattoo-design-looks-like-a-traditional-Japanese-watercolor-painting.-250x375.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 27,
    :name => "traditional_japanese_tattoo_horisyshiIII.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 28,
    :name => "Traditional-Japanese-tattoos-Wabori-1.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 29,
    :name => "tumblr_liul34YXZw1qb0yjt.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 30,
    :name => "tumblr_lzq8jfSOnT1qgs3yho1_500.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 31,
    :name => "Profile_captain.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 32,
    :name => "l_bd670f0dbb6e3e0a33a6ce913b04af93.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 33,
    :name => "l.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 34,
    :name => "edclown.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 35,
    :name => "gore-print-Dan-Henk.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 36,
    :name => "tumblr_mats8vRqqq1rhwqp7o1_500.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 37,
    :name => "leather-tattoo.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 38,
    :name => "Self_Tattooed_Hand_by_KatGore.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 39,
    :name => "406-31011l.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 40,
    :name => "zombie.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 41,
    :name => "1001_lrap_12_o+mexico_city_tattoo_convention+monster.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 42,
    :name => "petestrain.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 43,
    :name => "56_d861b2f4c192bb9463bba5302011eea11332274919.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 44,
    :name => "ashleythigh.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 45,
    :name => "zombie-tattoo.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 46,
    :name => "5017468544_b23b016d6e_m.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 47,
    :name => "HotChick_Black_Grey-Tattoos16.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 48,
    :name => "2798753295_b66b809701.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 49,
    :name => "blacktattoo29.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 50,
    :name => "st-michael-tattoo.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 51,
    :name => "black-grey-tattoo.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 52,
    :name => "angel_tattoo_black_and_grey_by_Remistattoo.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 53,
    :name => "black-grey-tattoo-06-curatedmag-360x540.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 54,
    :name => "black_and_grey_vol1_12_1.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 55,
    :name => "boegarretts.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 56,
    :name => "black and grey calla lily foot tattoo.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 57,
    :name => "Grey_tattoo_144.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 58,
    :name => "black-and-grey-tattoos-by-eric-marcinizyn-a.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 59,
    :name => "l (1).jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 60,
    :name => "black-and-grey-tattoos-by-eric-marcinizyn-2.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 61,
    :name => "illustrated-swamp.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 62,
    :name => "0916-temptu-tattoo-my-arm_bd.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 63,
    :name => "bird tattoonow large.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 64,
    :name => "1316399631_c612823714_b.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 65,
    :name => "1a3a59c434e9641224b766c69c805ee6.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 66,
    :name => "stencil kitty tattoo now2.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 67,
    :name => "a-hummingbird-butterfly-and-flowers-make-up-this-beautiful-tattoo-a-perfect-tattoo-design-for-women-or-girls.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 68,
    :name => "a-paisley-feather-tattoo-design-that-symbolizes-spirituality-594x445.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 69,
    :name => "a-peacock-feather-tattoo-on-the-leg-showing-off-the-eye-of-the-peacock-feather1.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 70,
    :name => "Tree-Tattoo-Design-For-Sexy-Girl-Rib-Cage.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 71,
    :name => "tree-tattoo.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 72,
    :name => "free-bird-tattoo.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 73,
    :name => "bird-5.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 74,
    :name => "mountains_tattoo2.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 75,
    :name => "tumblr_mdgrp8Troc1r07v7lo1_500.jpg",
    :description => "Nature Inspired",
    :path => "tattoos/",
    :category_id => 5)

Image.create(
    :id => 76,
    :name => "new_school_tattoo_paints_by_agreus-d30t6o6.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 77,
    :name => "genko-tattoo.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 78,
    :name => "Tattoo-new-school-caveira-cerejas-e-estrelas-em-chamas-1024x768-tattoo.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 79,
    :name => "new_school_1_by_DarkSunTattoo.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 80,
    :name => "old_new_school_heart_tattoo_by_gittson.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 81,
    :name => "pajaritos.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 82,
    :name => "frog-fly 900.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 83,
    :name => "galleryoftattoosnow.com-LuckieLeopardHOSTED-images-gallery-dali1.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 84,
    :name => "1115819147.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 85,
    :name => "joshwoods-newschool1.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 86,
    :name => "new-school-tattoo-design.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 87,
    :name => "new-school-tattoo-leg.png",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 88,
    :name => "Bird-Tattoo.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 89,
    :name => "Music_tattoo_209.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 90,
    :name => "new-school-heart-tattoo.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 91,
    :name => "girl.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 92,
    :name => "new_school_tattoo_barrie.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 93,
    :name => "heart-anchor3.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 94,
    :name => "bc7f547abfbf2be1bb74610058d7bffd.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 95,
    :name => "new school tattoo 07.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 96,
    :name => "new-school.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 97,
    :name => "tumblr_mgsekeYbNP1re71vio1_1280.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 98,
    :name => "nschl.jpeg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 99,
    :name => "new-school-swallow.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 100,
    :name => "Mom-and-Dad-New-School-Heart-and-Rose-Tattoo-by-Shane-ONeill.jpg",
    :description => "New School",
    :path => "tattoos/",
    :category_id => 6)

Image.create(
    :id => 101,
    :name => "Koi Fish Japanese tattoo.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 102,
    :name => "Traditional-Japanese-tattoos-Wabori-2-580x846.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 103,
    :name => "Japanese-Tattoo-10.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 104,
    :name => "japanese-demon-tattoo-on-half-sleeve.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 105,
    :name => "japanese-tattoos07.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 106,
    :name => "giant.jpeg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 107,
    :name => "Japanese Dragon Tattoo Designs and Meaning.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 108,
    :name => "traditional-japanese-tattoos2.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 109,
    :name => "japanese057.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 110,
    :name => "Japanese-Fantasy-Tattoos.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 111,
    :name => "traditional-geisha-thigh-japanese-tattoo.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 112,
    :name => "Hannya_Veil_Tattoo_M.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 113,
    :name => "sakura.jpeg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 114,
    :name => "japanese-doll-stretch-tattoo-m.jpg",
    :description => "Japanese Traditional",
    :path => "tattoos/",
    :category_id => 4)

Image.create(
    :id => 115,
    :name => "viking.JPG",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 116,
    :name => "222_92e07ddfde106d8d6357bdef433e2acb.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 117,
    :name => "4BB97493558E-16_thumb.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 118,
    :name => "ieaturapple.jpeg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 119,
    :name => "gore-creation-tattoo-83718.jpeg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 120,
    :name => "t1_Horror-Tattoos_736.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 121,
    :name => "ieaturtattoo.jpeg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 122,
    :name => "0220a2.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 123,
    :name => "575319_401013073266206_429751596_n.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 124,
    :name => "A33061A19D85-16_thumb.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 125,
    :name => "American-Psycho-Dan-Henk.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 126,
    :name => "grayan-tattoo.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 127,
    :name => "FH000011.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 128,
    :name => "1.jpg",
    :description => "Horror and Gore",
    :path => "tattoos/",
    :category_id => 3)

Image.create(
    :id => 129,
    :name => "tumblr_m6cfl8zIIw1ryitvho1_500.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 130,
    :name => "traditional-american-eagle-animal-tattoo.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 131,
    :name => "kay-kutta-ink-master.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 132,
    :name => "tumblr_mj0lur54R81qjgoi2o1_400.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 133,
    :name => "tumblr_lovr0kHZAM1qmj2s0o1_500.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 134,
    :name => "traditioanl-bird-tattoo.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 135,
    :name => "36678_1423712965807_1622232808_1019055_617266_n.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 136,
    :name => "lalo-yunda-ink-master.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 137,
    :name => "6234844195_dd7a880f35_z.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 138,
    :name => "american-flag-cannon-tattoo.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 139,
    :name => "Flags_tattoo_28.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 140,
    :name => "kaicreep.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 141,
    :name => "3511251262_eb18f1f0ab.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 142,
    :name => "itattooz-american-flag-pic-tattoo-design.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 143,
    :name => "indian-tattoo.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 144,
    :name => "traditional-american-tattoo.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 145,
    :name => "native-woman-tattoo.jpg",
    :description => "American Traditional",
    :path => "tattoos/",
    :category_id => 1)

Image.create(
    :id => 146,
    :name => "Shoulder-Tribal-Tattoo-2011-Design-for-Guys.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 147,
    :name => "tumblr_m9ol15sCQA1r283umo1_500.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 148,
    :name => "tribal-tattoo-3.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 149,
    :name => "3D tattoo design 2.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 150,
    :name => "tribal-tattoos-1.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 151,
    :name => "triabelsh.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 152,
    :name => "eagle-tribal-tattoos.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 153,
    :name => "9LOdBQ7yXNeROvXR5vLHsHeyBa3.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 154,
    :name => "tribal-tattoos-for-men 10.JPG",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 155,
    :name => "neo-tribal-tattoo.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 156,
    :name => "Polynesian-Tribal-Tattoos-13.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 157,
    :name => "negative-tribal-tattoo.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 158,
    :name => "tribal-tattoo-5.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 159,
    :name => "Polynesian-Tribal-Tattoos-18.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 160,
    :name => "colin-kaepernicks-new-tribal-tattoo.png",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 161,
    :name => "Tribal-Tattoos-Designs.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 162,
    :name => "Girly-Tribal-Tattoos-5.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 163,
    :name => "cross-tribal-tattoo.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 164,
    :name => "new tribal tattoos design.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 165,
    :name => "biomechanical-tribal-tattoo.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 166,
    :name => "sexy-lettering-tribal-tattoos-design.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 167,
    :name => "tribal123.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 168,
    :name => "Hot-Tribal-Tattoos-for-Man-8.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 169,
    :name => "Tribal-Tattoo-Designs-3.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 170,
    :name => "m7PB-2.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 171,
    :name => "Tribal-Phoenix-Tattoos-4.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 172,
    :name => "1039427727.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 173,
    :name => "polynesian-tribal-tattoo.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 174,
    :name => "polynesian-tribal-tattoos.gif",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 175,
    :name => "polynesian-tribal-tattoo600_9201.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 176,
    :name => "polynesian-tribal-tattoo-photo-0026.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 177,
    :name => "neo-tribal-tattoos.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 178,
    :name => "neo_tech_tribal2_large.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 179,
    :name => "Tribal-Shoulder-Tattoos-2.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 180,
    :name => "tribalcirc.jpg",
    :description => "Tribal",
    :path => "tattoos/",
    :category_id => 7)

Image.create(
    :id => 181,
    :name => "black&grey-angel1.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 182,
    :name => "black-and-grey-tattoos-by-eric-marcinizyn-5.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 183,
    :name => "twogs.jpeg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 184,
    :name => "bgtattoo5-thumb-567x671-26122.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 185,
    :name => "bgtattoo6-thumb-567x671-26123.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 186,
    :name => "lll.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 187,
    :name => "black and grey tattoo designs 5.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 188,
    :name => "Mask Black and GreySAMLL.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 189,
    :name => "CSP Zombie.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 190,
    :name => "Dog-black-and-grey-Tattoo-by-Phil-Colvin.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 191,
    :name => "Black-and-Grey-Koi-Fish-Tattoos-500x400.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 192,
    :name => "Teneile-Napoli-Black-and-Grey-Pin-Up-Tattoo.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 193,
    :name => "Picture 7.png",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 194,
    :name => "black_and_grey_tattoos_by_richkoosmcgowen-d5l8ceh.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 195,
    :name => "asdsad.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 196,
    :name => "12.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 197,
    :name => "Img199483_black_grey_skull_cover_up.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 198,
    :name => "t1_-black-and-grey-skull-tattoo_990.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 199,
    :name => "lionnn.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)

Image.create(
    :id => 200,
    :name => "black_and_grey_vol3_5_1_1.jpg",
    :description => "Black and Grey",
    :path => "tattoos/",
    :category_id => 2)



artist_images = 
[
    [71,169,175,6,5,11,159,163,15,149,61,179,146,158,3],#1
    [52,10,61,15,75,9,143,5,196,67,141,191,58,137,47],#2
    [10,6,138,135,60,2,8,180,11,59,134,14,145,170,47],#3
    [150,152,154,62,73,36,89,86,37,149,61,32,158,146,94],#4
    [11,199,34,196,123,12,195,13,35,116,145,126,136,33,189],#5
    [152,41,122,127,113,106,160,39,177,27,40,158,102,24,45],#6
    [12,1,8,14,129,100,130,152,76,86,187,54,97,92,89],#7
    [51,190,105,30,59,74,69,106,196,75,25,186,52,197,58],#8
    [81,33,25,117,41,126,113,119,79,22,97,95,39,124,111],#9
    [144,135,15,76,18,200,3,197,182,184,133,53,92,91,28],#10
]

artist_images.each_with_index do |val, index|
    val.each do |imageID|
    ArtistImage.create(:image_id=>imageID, :artist_id=>index)
    end
end

artist_category =
[
    [1,5,7],#1
    [1,2,5],#2
    [1,2,7],#3
    [3,5,6,7],#4
    [1,2,3],#5
    [3,4,7],#6
    [1,2,6,7],#7
    [2,4,5],#8
    [3,4,6],#9
    [1,2,4,6]#10
]
artist_category.each_with_index do |val, index|
    val.each do |categoryID|
    ArtistCategory.create(:category_id=>categoryID, :artist_id=>index)
    end
end