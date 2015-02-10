# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'test@me.com',
              password: 'passwordtest',
              password_confirmation: 'passwordtest',
              first_name: 'Kate',
              last_name: 'Balducci',
              profile_name: 'kate_b',
              location: 'Boston',
              photo_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7oiC5m-IRa0hyRDI58JdDcxPBE4sZe8I762lg_iSJ-5vld1T95zcIJ-4')
# 5.times do
#   user = User.create(first_name: Faker::Name.first_name,
#                     last_name: Faker::Name.last_name,
#                     profile_name: Faker::Internet.user_name,
#                     photo_url: Faker::Avatar.image,
#                     location: Faker::Address.city,
#                     bio: Faker::Lorem.paragraph)
#   10.times do
#     user.chats.create(message: Faker::Lorem.sentence)
#   end
# end
