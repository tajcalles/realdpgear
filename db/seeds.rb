# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 10.times do
   Item.create(
     name: Faker::Lorem.word,
     item_image: Faker::Placeholdit.image("50x50"),
     price: Faker::Number.decimal(2),
     description: Faker::ChuckNorris.fact
   )
 end

@x = 1
 3.times do
   Cart.create(
     name: "Cart #{@x}"
   )
   @x +=1
 end

puts "Seeded!"
