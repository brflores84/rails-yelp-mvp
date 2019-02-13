require 'faker'

Restaurant.destroy_all

puts 'Creating 10 fake posts...'
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: 'italian',
    phone_number: Faker::PhoneNumber.phone_number,
  )
  restaurant.save!
end
puts 'Finished!'
