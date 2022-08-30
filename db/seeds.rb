require "json"

puts "Destroy interests"
Interest.destroy_all
puts "Interests destroyed"

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
