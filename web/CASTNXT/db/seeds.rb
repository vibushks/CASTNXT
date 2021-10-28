# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{:first_name => 'Jane', :last_name => 'Doe', :agency_name => 'Test Agency', :address => '1234 test blvd.', :phone_number => '123-456-7890', :email_address => 'jane.doe@testmail.com', :height_feet => 5, :height_inches => 4, :dress_size => 5}]

users.each do |user|
    User.create!(user)
end