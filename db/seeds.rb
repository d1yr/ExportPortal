# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do 
    User.create(name: Faker::Artist.name, email: Faker::Internet.email, password_digest: "abc123")
end

30.times do
    Engineer.create(name: Faker::DcComics.name, bio: Faker::ChuckNorris.fact)
end

10.times do 
    Studio.create(name: Faker::Company.name, location: Faker::Address.full_address, info: Faker::ChuckNorris.fact)
end

70.times do
    Schedule.create(user_id: User.all.sample.id, studio_id: Studio.all.sample.id, engineer_id: Engineer.all.sample.id)
end