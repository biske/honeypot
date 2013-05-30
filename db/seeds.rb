# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :first_name => 'Ivan', :last_name => "Bisevac", :email => 'ivan.bisevac@gmail.com', :password => 'biskebiske', :password_confirmation => 'biskebiske'
puts 'New user created: ' << user.first_name