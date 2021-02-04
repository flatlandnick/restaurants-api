# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    Cuisine.create({
        name: Faker::Restaurant.type
    })
end


50.times do 
    Restaurant.create({ 
        name: Faker::Restaurant.name, 
        cuisine_id: rand(1..10) , 
        description: Faker::Restaurant.description, 
        price: rand(1..4), 
        rating: rand(1..5), 
        is_chain: rand(2) == 1 ? true : false
    })
end