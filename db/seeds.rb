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

Engineer.create(name: "Alex S", bio: "A NY multimedia artist born and based in NYC, offers mixdown services, lessons, and engineering. Recent appearances in: Mixmag, Bandcamp Daily, LaidOffNYC" )
Engineer.create(name: "Isaac S", bio: "Better known as DJ SWISHA, this Los Angeles born artist offers mixdown, engineering, mastering, recording, and lessons as services. Recent appearances in: Bandcamp Daily, Earmilk, Nowadays")
Engineer.create(name: "Reynaldo H", bio: "IF BASS MADE THE BEAT U KNO IT SLAPP!!!")
Engineer.create(name: "Jaryd K", bio: "Jaryd is a multi-genre producer, engineer, and dj. He specializes in working with textured, harsh sounds. His background in club music gives a very present feeling to his mixes and masters.")
Engineer.create(name: "Lars P", bio: "One of the founders of Swim Team, and the founder of Towhead recordings. Offers engineering, mixdown, and mastering services")
Engineer.create(name: "Jon K", bio: "KANYON SOUND. ASK FOR SERVICES INFO.")


Studio.create(name: "EXG PORTAL", location: "317 Rutledge, Brooklyn, NY", info: "Large Studio, can accomodate up to six people working simultaneously. Equipment includes, but is not limited to: Apollo Firewire interface, Soundcraft 16 channel mixer /w inboard fx, Kali IN8 3-way monitors, JBL SW10 subwoofer, 32-inch main flatscreen, 24-inch recording area flatscreen, ceiling mounted mic boom, Shure sm57 line mic, Rode NT-1 recording mic, soundproof curtains, Roland TR-8S, MC-505, & TR-8, Akai MPC 1000, Arturia Mininova, Korg Wavestation EX, Microkorg XL, Monologue, full Pioneer Nexus dj setup.")
Studio.create(name: "DUNGEON PORTAL", location: "286 Stanhope", info: "You Get What You Pay For!")

#10.times do 
#    Studio.create(name: Faker::Company.name, location: Faker::Address.full_address, info: Faker::ChuckNorris.fact)
#end

#70.times do
   # Schedule.create(user_id: User.all.sample.id, studio_id: Studio.all.sample.id, engineer_id: Engineer.all.sample.id, time: rand(1..10), date: Faker::Date.between(from: '2020-09-30', to: '2021-09-25'))
#end