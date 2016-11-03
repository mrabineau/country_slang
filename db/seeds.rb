# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all
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

  {name: "Mexico",
   gov_type: "Constitutional Republic",
   population: 119000000,
   capitol: "Ciudad Mexico Distrito Federal"},

   {name: "Dominican Republic",
   gov_type: "Unitary Presidential Republic",
   population: 10000000,
   capitol: "Santo Domingo"},

  {name: "Colombia",
   gov_type: "Unitary Presidential Republic",
   population: 48000000,
   capitol: "Bogotá"},

   {name: "Argentina",
   gov_type: "Unitary Presidential Republic",
   population: 43000000,
   capitol: "Bueno Aires"},


   {name: "Uruguay",
   gov_type: "Unitary Presidential Republic",
   population: 3000000,
   capitol: "Montevideo"},


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

   {phrase: "Follón",
    translation: "clusterfuck",
    example: "Que tal el concierto? Un follón, hubo muchisima gente.",
    country_id: countries[0].id,
    user_id: users[0].id},

    {phrase: "Me cago en la leche",
     translation: "For fucks sake",
     example: "Perdí mi vuelo. Me cago en la leche.",
     country_id: countries[0].id,
     user_id: users[0].id},

   {phrase: "Guagua",
    translation: "Baby",
    example: "La guagua hoy cumple un año",
    country_id: countries[1].id,
    user_id: users[0].id},

   {phrase: "Símon",
    translation: "Yes",
    example: "Usted quiere ir a la playa? Símon!",
    country_id: countries[1].id,
    user_id: users[0].id},

   {phrase: "Ay chichi",
    translation: "Burrrr",
    example: "Ay chichi, que frio hace",
    country_id: countries[1].id,
    user_id: users[0].id},

    {phrase: "Me vale madre",
    translation: "I don't give a fuck",
    example: "Que quiere hacer hoy? Me vale madre.",
    country_id: countries[2].id,
    user_id: users[0].id},

    {phrase: "Padre",
     translation: "cool",
     example: "Que te parece el carro? Está padre!",
     country_id: countries[2].id,
     user_id: users[0].id},

     {phrase: "Vaina",
     translation: "Has many meanings but in its simplest form: that",
     example: "Dame esa vaina",
     country_id: countries[3].id,
     user_id: users[0].id},

     {phrase: "Bacano",
     translation: "cool",
     example: "Mi pelo esta súper bacano, no?",
     country_id: countries[3].id,
     user_id: users[0].id},

     {phrase: "Polas",
     translation: "beer",
     example: "Páseme unas polas, bien frias por favor",
     country_id: countries[4].id,
     user_id: users[0].id},

     {phrase: "Rumbiar",
     translation: "To party",
     example: "Esta noche rumbiamos. Preparate!",
     country_id: countries[4].id,
     user_id: users[0].id},

     {phrase: "Más dificil que cagar en un frasquito",
     translation: "More difficult than shitting in a little jar",
     example: "I honestly couldn't tell you but I love this.",
     country_id: countries[5].id,
     user_id: users[0].id},


     {phrase: "Me pica el bagre",
     translation: "I'm hungry",
     example: "Comimos algo? Me pica el bagre.",
     country_id: countries[5].id,
     user_id: users[0].id},


     {phrase: "Me pica el bagre",
     translation: "I'm hungry",
     example: "Comimos algo? Me pica el bagre.",
     country_id: countries[5].id,
     user_id: users[0].id},

     {phrase: "Bárbaro",
     translation: "Wonderful, great",
     example: "  ",
     country_id: countries[6].id,
     user_id: users[0].id},


     {phrase: "Gurís/gurizas",
     translation: "guys/girls/homies",
     example: "  ",
     country_id: countries[6].id,
     user_id: users[0].id},

  ])
