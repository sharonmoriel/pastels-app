require 'faker'

puts 'Creating 3 pastel vendors...'
3.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    password: '123456'
  )

  Pastel.create!(
    name: Faker::BossaNova.song,
    description: Faker::Lorem.sentence,
    price: Faker::Number.decimal(l_digits: 2),
    stock: Faker::Number.between(from: 1, to: 10),
    photo: 'https://images.unsplash.com/photo-1562044840-a9bf4731635b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1114&q=80',
    user_id: user.id
  )
end

puts 'Creating 3 users...'

3.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    password: '123456'
  )
end

puts 'Done :)'
