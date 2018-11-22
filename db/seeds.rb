# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese'
  },
  {
    name:         'Pizza Hut',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'italian'
  },
  {
    name:         'Nobu',
    address:      '18 Mar Ave, Marbella',
    category:     'japanese'
  },
  {
    name:         'Nandos',
    address:      '18 Kensington High St, London',
    category:  'french'
  },
  {
    name:         'Belga Cuina',
    address:      '205 Carrer de Valencia, Barcelona 08007',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
