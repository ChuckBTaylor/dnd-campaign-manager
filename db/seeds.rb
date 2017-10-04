# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
x = Api.new
x.populate_table("spell")
x.populate_class_name
x.populate_class_names_spells
x.populate_race_info
Race.add_manually_entered_races
x.populate_table("trait")
Campaign.create(name:"No Campaign", user_id:1)
