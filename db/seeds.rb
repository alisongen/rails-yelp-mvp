# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Restaurant.destroy_all

restaurants = [
  { name: "Le Meurice", address: "228 Rue de Rivoli, 75001 Paris", phone_number: "+33144581010", category: "french" },
  { name: "Le Petit Cambodge", address: "20 Rue Alibert, 75010 Paris", phone_number: "+33142451045", category: "chinese" },
  { name: "Pink Mamma", address: "20 Rue de Douai, 75009 Paris", phone_number: "+33142020550", category: "italian" },
  { name: "Kodawari Ramen", address: "29 Rue Mazarine, 75006 Paris", phone_number: "+33144616188", category: "japanese" },
  { name: "Chez Léon", address: "8 Rue Coquillière, 75001 Paris", phone_number: "+33142360282", category: "belgian"}
]

puts "Creating restaurants..."

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
  puts "Created #{restaurant[:name]}"
end

puts "All restaurants created!"
