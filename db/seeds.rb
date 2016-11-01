# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Slang.delete_all
Country.delete_all

users = User.create ([{
  user_name: "Poncho",
  email: "p.rabineau@gmail.com",
  password: "paws123",
  password_confirmation: "paws123"
  }])

countries = Country.create([{
  name: "Spain",
  gov_type: "Constitutional Monarchy",
  population: 46000000,
  capitol: "Madrid"
}])

slangs = Slang.create ([{
  phrase: "Guay",
  translation: "Cool",
  example: "Que guay!"
  }])
