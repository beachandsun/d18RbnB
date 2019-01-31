# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all



5.times do 
	city = City.create!(city_name: Faker::Address.city)
end

puts "5 city créés"

10.times do
 dogsitter = Dogsitter.create!(name: Faker::LordOfTheRings.character, city_id: rand(City.all.first.id..City.all.last.id))
end

puts "10 dogsitters créés"

20.times do
 dog = Dog.create!(name: Faker::Pokemon.name, city_id: rand(City.all.first.id..City.all.last.id))
end

puts "20 dog créés"

30.times do
	stroll = Stroll.create!(date: Faker::Time.forward(23, :all), dog_id: rand(Dog.all.first.id..Dog.all.last.id), dogsitter_id: rand(Dogsitter.all.first.id..Dogsitter.all.last.id))
end

puts "30 strolls créés"