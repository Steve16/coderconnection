# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'VIP' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
user.add_role :admin
user2.add_role :VIP

proposal1 = Proposal.create! :title => 'First Offer', :description => 'ublah blah blah blah blsdlskdv sfbvkneroi troiwrn  sdvklie', :user_id => '1'
proposal2 = Proposal.create! :title => 'Second Offer', :description => 'ublah blah blah blah blsdlskdv sfbvkneroi troiwrn  sdvklie', :user_id => '1'
proposal3 = Proposal.create! :title => 'Third Offer', :description => 'ublah blah blah blah blsdlskdv sfbvkneroi troiwrn  sdvklie', :user_id => '1'
proposal4 = Proposal.create! :title => 'Fourth Offer', :description => 'ublah blah blah blah blsdlskdv sfbvkneroi troiwrn  sdvklie', :user_id => '1'
proposal5 = Proposal.create! :title => 'Fifth Offer', :description => 'ublah blah blah blah blsdlskdv sfbvkneroi troiwrn  sdvklie', :user_id => '1'
proposal6 = Proposal.create! :title => 'Sixth Offer', :description => 'ublah blah blah blah blsdlskdv sfbvkneroi troiwrn  sdvklie', :user_id => '1'
proposal7 = Proposal.create! :title => 'Seventh Offer', :description => 'ublah blah blah blah blsdlskdv sfbvkneroi troiwrn  sdvklie', :user_id => '1'

puts 'New user created: ' << user.name