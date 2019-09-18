# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    category: 'chinese',

    phone_number: '772 68 262'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    category: 'japanese',

    phone_number: '726 21 693'
  },
  {
    name: 'Biriyani house',
    address: 'Hyderabad, India',
    category: 'indian',

    phone_number: '349 27 472'
  },
  {
    name: 'Pizza kebab',
    address: 'Oslo',
    category: 'italian',

    phone_number: '526 85 387'
  },
  {
    name: 'Paradize',
    address: 'Stockholm, sweden',
    category: 'french',

    phone_number: '719 639 173'
  }

]
Restaurant.create!(restaurants_attributes)
Review.create!(rating: 4, content: "safhjhs", restaurant: Restaurant.first)
puts 'Finished!'
