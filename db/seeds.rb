# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  name = Faker::Name.name
  avatar = Faker::Avatar.image(name, '50x50', 'png', 'set4')
  Friend.create(name: name, avatar: avatar)
end
