# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "json"

puts "cleaning database"
Question.destroy_all
Option.destroy_all
User.destroy_all
Reward.destroy_all
Learning.destroy_all

puts "Destroy interests"
Interest.destroy_all
puts "Interests destroyed"

puts "Making profiles"
user = User.new(first_name: "Thomas", last_name: "Ben", city: "Bordeaux", email: "devmaster@recyclearn.com", password: "secret")
user.save!
user = User.new(email: "dev@recylearn.com", password: "secret", city: "Bordeaux", first_name: "Jean", last_name: "Neymar")
user.save!

puts "Making a course"
learning = Learning.new(title: "Animals", topic: "Fox", city: "Bordeaux", difficulty: 1, score: 80)
learning.save!
puts "Course made"

puts "Making treats"
reward = Reward.new(user_id: user.id, created_at: nil, updated_at: nil, validation: false, learning_id: learning.id)
reward.save!
puts "Done"

puts "making question"
quiz = Question.new(content: "What does the fox says ?", learning_id: learning.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Woof", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Meow", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Moo", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Answer D", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 2"
quiz = Question.new(content: "What does the wolf says ?", learning_id: learning.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Woof", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Meow", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Moo", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Answer D", good: false)
option.question = quiz
option.save!
puts "Options 2 added succesfully, well done it's amazing"

puts "making question 3"
quiz = Question.new(content: "What does the car says ?", learning_id: learning.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Woof", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Meow", good: true)
option.question = quiz
option.save!

option = Option.create(content: "Moo", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Answer D", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 4"
quiz = Question.new(content: "What does the dog says ?", learning_id: learning.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Woof", good: true)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Meow", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Moo", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Answer D", good: false)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing"

puts "making question 5"
quiz = Question.new(content: "What does the D says ?", learning_id: learning.id)
quiz.save!
puts "question saved"

puts "adding options to the question"
option = Option.create(content: "Woof", good: false)
option.question_id = quiz.id
option.save!

option = Option.create(content: "Meow", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Moo", good: false)
option.question = quiz
option.save!

option = Option.create(content: "Answer D", good: true)
option.question = quiz
option.save!
puts "Options added succesfully, well done it's amazing and over"


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
