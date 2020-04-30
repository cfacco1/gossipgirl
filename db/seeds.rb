require 'faker'

User.destroy_all

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.yoda,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 12, to: 50)
  )
end