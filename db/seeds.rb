require 'faker'

puts 'Creating 3 pastel vendors...'

Pastel.delete_all

addresses = [
              "R. da Misericórdia 9, Lisbon",
              "Largo do Intendente Pina Manique 45",
              "Tv. do Monte 26",
              "Rua dos Bacalhoeiros, 10",
              "Praça do Príncipe Real 5",
              "Rua Doutor Gama Barros 14, Lisbon",
              "Av. 24 de Julho 68"
          ]


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
    photo: Rails.root.join('app/assets/images/pastel_1.png').open,
    user_id: user.id,
    address: addresses.sample
  )
end




puts 'Done :)'
