require "json"

puts "Destroy interests"
Interest.destroy_all
puts "Interests destroyed"

puts "Create user"

user = User.new(email: "dev@recylearn.com", password: "secret", city: "Bordeaux", first_name: "Jean", last_name: "Neymar")
user.save!

puts "Create composters"
filepath = "db/data_base/composteur_bordeaux.json"
composteurs = JSON.parse(File.read(filepath))
n = 0
composteurs.each do |composteur|
  n += 1
  address = composteur["fields"]["adresse"]
  longitude = composteur["fields"]["geo_shape"]["coordinates"].first
  latitude = composteur["fields"]["geo_shape"]["coordinates"].last
  interest = Interest.new(address: address, latitude: latitude, longitude: longitude, category: 1)
  interest.save!
  puts "#{n} / #{composteurs.count}"
end
puts "Composters created"

puts "Create recycling centers"
filepath = "db/data_base/dechetteries_bordeaux.json"
centers = JSON.parse(File.read(filepath))
n = 0
centers.each do |center|
  n += 1
  address = center["fields"]["nom"]
  longitude = center["fields"]["geo_shape"]["coordinates"].first
  latitude = center["fields"]["geo_shape"]["coordinates"].last
  interest = Interest.new(address: address, latitude: latitude, longitude: longitude, category: 2, website: "https://www.bordeaux.fr/p911/les-centres-de-recyclage-dechetteries")
  interest.save!
  puts "#{n} / #{centers.count}"
end
puts "Recycling centers created"

puts "Create Glass containers"
filepath = "db/data_base/verre_bordeaux.json"
containers = JSON.parse(File.read(filepath))
n = 0
containers.each do |container|
  n += 1
  longitude = container["fields"]["geo_shape"]["coordinates"].first
  latitude = container["fields"]["geo_shape"]["coordinates"].last
  address = "Glass container ##{n}"
  interest = Interest.new(address: address, latitude: latitude, longitude: longitude, category: 3)
  interest.save!
  puts "#{n} / #{containers.count}"
end
puts "Glass containers created"
