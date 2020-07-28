# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
User.destroy_all
UserCity.destroy_all

keenan = User.create!(username: 'Kjones73', pin: '1234')
chicago = City.create(name: 'Chicago', state: 'IL', country: "US")
keenanChicago = UserCity.create!(user: keenan, city: chicago)
