# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.destroy_all
#Engineer.destroy_all
#Studio.destroy_all
#Schedule.destroy_all

#50.times do 
#    User.create(name: Faker::Artist.name, email: Faker::Internet.email, password_digest: "abc123")
#end



#30.times do
#    Engineer.create(name: Faker::DcComics.name, bio: Faker::ChuckNorris.fact)
#end

Engineer.create(name: "Swisha", bio: )

#10.times do 
#    Studio.create(name: Faker::Company.name, location: Faker::Address.full_address, info: Faker::ChuckNorris.fact)
#end

#70.times do
   # Schedule.create(user_id: User.all.sample.id, studio_id: Studio.all.sample.id, engineer_id: Engineer.all.sample.id, time: rand(1..10), date: Faker::Date.between(from: '2020-09-30', to: '2021-09-25'))
#end