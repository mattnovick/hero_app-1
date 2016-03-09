# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Character.create(first_name: "Steve", last_name: "Rogers", hero_name: "Captain America", universe: "Marvel" , bio: "lorem ipsum")
Character.create(first_name: "Diana", last_name: "Prince", hero_name: "Wonder Woman", universe: "DC" , bio: "lorem ipsum")
Character.create(first_name: "Jean", last_name: "Grey", hero_name: "Phoenix", universe: "Marvel" , bio: "lorem ipsum")
Character.create(first_name: "Bruce", last_name: "Wayne", hero_name: "Batman", universe: "DC" , bio: "lorem ipsum")
Character.create(first_name: "Bruce", last_name: "Banner", hero_name: "Hulk", universe: "Marvel" , bio: "lorem ipsum")
