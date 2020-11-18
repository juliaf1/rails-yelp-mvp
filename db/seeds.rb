puts "Destroying all restaurants..."

Restaurant.destroy_all

puts "Creating fake restaurants..."

5.times do
  new_rest = Restaurant.create(
    name: Faker::Cannabis.brand,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )

  puts "#{new_rest.name} created"
end

puts "Done 👾"
