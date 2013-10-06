# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#puts 'SETTING UP DEFAULT USER LOGIN'
#user = User.create! :name => 'Boyd-z', :email => 'bmc@literallight.com', :password => 'wm1as0De', :password_confirmation => 'wm1as0De'
#puts 'New user created: ' << user.name
#user2 = User.create! :name => 'Guest', :email => 'you@email.com', :password => 'password', :password_confirmation => 'password'
#puts 'New user created: ' << user2.name

product = Product.create! :title => 'Stranger In A Strange Land', :description => 'The story of Valentine Michael Smith, a human who comes to Earth in early adulthood after being born on the planet Mars and raised by Martians.', :status => 1,  :display_order => 1, :image => '', :retail_price => '', :link => '', :author_last =>'Heinlien', :author_first => 'Robert A.', :publish_year => 1961, :genre => '', :keyword =>'', :rating => ''