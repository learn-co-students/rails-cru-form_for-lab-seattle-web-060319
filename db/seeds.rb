# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mbd = Artist.create!(name: "Murder by Death", bio: "A cool band")
ve = Artist.create!(name: "Vaudeville Etiquette", bio: "From Seattle")
folk = Genre.create!(name: "Folk")
rock = Genre.create!(name: "Rock")

