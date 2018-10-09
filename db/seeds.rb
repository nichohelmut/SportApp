# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

require 'faker'
puts 'Creating 10 fake customers...'
10.times do
  customer =  Customer.new(
    name:         Faker::Football.player,
    email:        Faker::Internet.email,
    description:  Faker::Company.buzzword,
  )
  customer.save! end
puts 'Finished!'

puts 'Creating 10 fake trainers...'
10.times do
type = ['Sport Specific Training', 'General Fitness', 'Muscle Tonning', 'Speed - Conditioning',
  'Contest Preparation'].shuffle.sample
location = %w( flat park fitness school ).shuffle.sample
  trainer = Trainer.new(
    name:           Faker::Football.coach,
    email:          Faker::Internet.email,
    description:    Faker::Company.buzzword,
    price:          "#{Faker::Commerce.price} - € / h",
    city:           'Berlin',
    availiability: 'availiable',
    sport_type:         type,
    certification:  Faker::Football.team,
    training_location: location
  )
  trainer.save! end
puts 'Finished!'
