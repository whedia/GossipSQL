# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

nbuser = 10
user = []
nbcity = 10
city = []
nbgossip = 20
gossip = []
nbtag = 10
tag = []
nbprivatemessage = 5
privatemessage = []

nbuser.times do |x|
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::String.random,
    email: Faker::Internet.email,
    age: Faker::Number.number(digits: 2),
    city: Faker::Address.city)
  users << user
  puts "Seeding User nb#{x}"
end

nbcity.times do |x|
  city = City.create(
    name: Faker::Name.name,
    zip_code: Faker::Address.zip_code)
  cities << City
  puts "Seeding City nb#{x}"
end

nbgossip.times do |x|
  gossip = Gossip.create(
    title: Faker::GreekPhilosophers.name,
    content: Faker::String.random)
  gossips << Gossip
  puts "Seeding Gossip nb#{x}"
end

nbtag.times do |x|
  tag = Tag.create(
    title: Faker::GreekPhilosophers.name)
  tags << tags
  puts "Seeding Tag nb#{x}"
end

nbprivatemessage.times do |x|
  privatemessage = PrivateMessage.create(
    content: Faker::String.random)
  privatemessage << privatemessages
  puts "Seeding PM nb#{x}"
end