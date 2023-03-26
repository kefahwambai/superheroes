# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Hero.create(name: "Peter Parker", super_name: "Spider-Man")
Hero.create(name: "Clark Kent", super_name: "Superman")
Hero.create(name: "Bruce Wayne", super_name: "Batman")
Hero.create(name: "Diana Prince", super_name: "Wonder Woman")
Hero.create(name: "Bruce Banner", super_name: "The Hulk")
Hero.create(name: "Tony Stark", super_name: "Iron Man")
Hero.create(name: "Natasha Romanoff", super_name: "Black Widow")
Hero.create(name: "Steve Rogers", super_name: "Captain America")

# Powers
Power.create(name: "Super Strength", description: "Ability to exert extreme physical force")
Power.create(name: "Flight", description: "Ability to fly through the air")
Power.create(name: "Telekinesis", description: "Ability to move objects with one's mind")
Power.create(name: "Invisibility", description: "Ability to become invisible to the naked eye")
Power.create(name: "Regeneration", description: "Ability to rapidly heal from injuries")
Power.create(name: "Energy Projection", description: "Ability to shoot energy blasts")
Power.create(name: "Shapeshifting", description: "Ability to transform into different forms")
Power.create(name: "Elemental Control", description: "Ability to manipulate the elements (e.g. fire, water, air)")

# Hero Powers
HeroPower.create(strength: "Strong", hero_id: 1, power_id: 1)
HeroPower.create(strength: "Weak", hero_id: 2, power_id: 2)
HeroPower.create(strength: "Strong", hero_id: 3, power_id: 3)
HeroPower.create(strength: "Average", hero_id: 4, power_id: 4)
HeroPower.create(strength: "Strong", hero_id: 5, power_id: 5)
HeroPower.create(strength: "Weak", hero_id: 6, power_id: 6)
HeroPower.create(strength: "Strong", hero_id: 7, power_id: 7)
HeroPower.create(strength: "Strong", hero_id: 8, power_id: 8)




