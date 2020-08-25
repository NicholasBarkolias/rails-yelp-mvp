puts 'Cleaning database'

Restaurant.destroy_all
10.times do
  puts 'Creating restaurants'
  Restaurant.create({
                      name: Faker::Restaurant.name,
                      address: Faker::Address.street_address,
                      category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
                      phone_number: Faker::PhoneNumber.phone_number
                    })
end
puts 'Finished'
