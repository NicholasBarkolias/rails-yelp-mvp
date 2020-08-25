puts 'Cleaning database'

10.times do
  Restaurant.destroy_all

  puts 'Creating restaurants'
  Restaurant.create({
                      name: Faker::Restaurant.name,
                      address: Faker::Address.street_address,
                      category: ["chinese", "italian", "japanese", "french", "belgian"].sample
                    })
end
puts 'Finished'
