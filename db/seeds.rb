# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.delete_all
20.times do |i|
  task = Task.new
  task.title = Faker::Hipster.sentence
  task.description = Faker::Hipster.paragraph(2)
  task.photo = "http://lorempixel.com/640/480/people/#{ i + 1 }"
  task.save
end
