# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning database...'
Flat.destroy_all

puts 'creating flats...'
10.times do
  flat = Flat.create!(
    name: Faker::Address.street_name,
    address: Faker::Address.street_address,
    description: Faker::GreekPhilosophers.quote,
    price_per_night: rand(50..400),
    number_of_guests: rand(1..10)
  )
  puts "created #{flat.name}"
end
puts 'finished!'
