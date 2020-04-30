require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all

10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

10.times do
  Tag.create!(
    title: Faker::Games::Pokemon.name
  )
end

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.yoda,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 12, to: 50)
  )
end

20.times do
  Gossip.create!(
    title: Faker::Book.title,
    content: Faker::Quote.most_interesting_man_in_the_world,
    user_id: User.all.sample.id
  )
end

30.times do
  TagGossip.create!(
    tag_id: Tag.all.sample.id,
    gossip_id: Gossip.all.sample.id
  )
end