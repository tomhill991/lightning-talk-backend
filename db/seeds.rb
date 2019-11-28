# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Talk.destroy_all

50.times do
  talk = Talk.new(
    title: Faker::Company.bs,
    description: Faker::Company.catch_phrase,
    votes: (1..100).to_a.sample
  )
  talk.save!
end

puts "I created #{Talk.count} talks"
