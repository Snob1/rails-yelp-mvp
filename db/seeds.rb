# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Restaurant.destroy_all
# 5.times do
#   a = Restaurant.new
#   a.name = Faker::Book.title
#   a.category = ["chinese", "italian", "japanese", "french", "belgian"].sample
#   a.address = Faker::Address.street_address
#   a.phone_number = Faker::PhoneNumber.phone_number
#   a.save
# end

Review.destroy_all
15.times do
  a = Review.new
  a.content = Faker::Book.title
  # a.category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  # a.address = Faker::Address.street_address
  # a.phone_number = Faker::PhoneNumber.phone_number
  a.rating = [0,1,2,3,4,5].sample
  a.restaurant_id = Restaurant.all.sample.id
  a.save
end
