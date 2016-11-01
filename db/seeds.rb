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

countries = Country.create([
  {name: "Spain",
  gov_type: "Constitutional Monarchy",
  population: 46000000,
  capitol: "Madrid"},

  {name: "Ecuador",
  gov_type: "Constitutional Republic",
  population: 16000000,
  capitol: "Quito"},

  {name: "Peru",
   gov_type: "Constitutional Republic",
   population: 31000000,
   capitol: "Lima"}

  ])

slangs = Slang.create ([
  {phrase: "Guay",
  translation: "Cool",
  example: "Que guay!",
  country_id: countries[0].id,
  user_id: users[0].id},

  {phrase: "Estás más loca que una cabra",
   translation: "You are crazier than a goat",
   example: "Que haces?? Estás más loca que una cabra!",
   country_id: countries[0].id,
   user_id: users[0].id},

   {phrase: "Guagua",
    translation: "Baby",
    example: " ",
    country_id: countries[1].id,
    user_id: users[0].id},

   {phrase: "Símon",
    translation: "Yes",
    example: " ",
    country_id: countries[1].id,
    user_id: users[0].id},

   {phrase: "Ay chichi",
    translation: "Burrrr",
    example: "  ",
    country_id: countries[1].id,
    user_id: users[0].id}

  ])
