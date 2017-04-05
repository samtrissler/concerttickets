# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r1 = Role.create!(:name => "Customer")
r2 = Role.create!(:name => "Admin")

u1 = User.create!(:username => "Sam", :password => "samsamsam", :password_confirmation => "samsamsam", :email => "sam@sam.com")
u2 = User.create!(:username => "Brad", :password => "bradbrad", :password_confirmation => "bradbrad", :email => "brad@brad.com")

u1.roles << r2
u2.roles << r1


# 3 concerts and 2 venues

Concert.create!(name: "Twenty One Pilots", start_date: "2016-03-01 12:00:00", end_date: "2016-03-01 14:00:00", price: "50.00", tickets_available: "100", venue_id: "1")
Concert.create!(name: "Britney Spears", start_date: "2016-04-01 12:00:00", end_date: "2016-04-01 14:00:00", price: "50.00", tickets_available: "100", venue_id: "2")
Concert.create!(name: "Blink 182", start_date: "2016-05-01 12:00:00", end_date: "2016-05-01 14:00:00", price: "50.00", tickets_available: "100", venue_id: "2")

Venue.create!(name: "Klipsch", address: "430 Sally Mae St", city: "Noblesville", state: "Indiana", zip: "46060")
Venue.create!(name: "Old National Center", address: "Fountain Square", city: "Indianapolis", state: "Indiana", zip: "46260")
