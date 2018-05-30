# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do

  dept = Department.create(
    name: Faker::Commerce.department(1)
  )

  20.times do
    item = dept.items.create(
      name: Faker::Commerce.product_name,
      price: Faker::Commerce.price, 
      description: Faker::Hacker.say_something_smart
    )

    10.times do
      item.comments.create(
        body: Faker::FamilyGuy.quote,
        rating: Faker::Number.between(1, 10),
        author: Faker::Name.name_with_middle
      )

    end
    
  end

end