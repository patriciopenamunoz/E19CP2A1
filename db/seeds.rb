# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Modify the following values to control the number of records
# which will be generated with rails db:seed
tasks_number = 9
users_number = 45
tasks_by_user = 4
#########################################################################
Todo.delete_all
User.delete_all
Task.delete_all

# This user was created for testing purposes
User.create(email: 'abc@abc.com',
            password: '123456',
            password_confirmation: '123456')
############################################

tasks_number.times do |i|
  task = Task.new
  task.title = Faker::Hipster.sentence
  task.description = Faker::Hipster.paragraph(2)
  task.photo = "http://lorempixel.com/640/480/people/#{ i + 1 }"
  task.save
end
tasks = Task.all.map { |t| t.id }
users_number.times do |i|
  password = Faker::Crypto.md5
  user = User.new(email: Faker::Internet.email,
                  password: password,
                  password_confirmation: password)
  user.save
  tasks.sample(tasks_by_user).each { |t| Todo.create(user_id: user.id, task_id: t) }
end
