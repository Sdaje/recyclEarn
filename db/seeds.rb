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

puts "Adding a lesson"
lecture = Lecture.new(title: "Pokedex IRL", content: "<h1> There's many many pets in Bordeaux </h1><br><p>There's <strong>cats</strong> that do Meow, <strong>dogs</strong>, who are the descendant of wolves, who do woof.</p><br><p>It's gonna be too much empty if I don't add a bit of text so here you go, it's rainy today, we are at Bordeaux, the sun is a bit hidden behind the clouds and I wouldn't complain for this to happen more often. I dont know what to write next so here is Lorem</p><br><h2>Lorem Ipsum</h2><br>Aliquam risus augue, sollicitudin vel elit quis, finibus vestibulum tortor. Nulla ut malesuada justo. In viverra, mauris sed volutpat suscipit, dolor justo pulvinar libero, nec placerat nisi sem ut arcu. Nunc turpis tellus, fermentum vitae mauris eget, iaculis posuere odio. Phasellus euismod malesuada nunc bibendum tincidunt. Nam quis sapien pharetra, ornare diam non, ultricies nibh. Vestibulum aliquam nunc nunc, a euismod libero dapibus sodales. Morbi consequat justo nibh, posuere cursus quam interdum vel. In sed enim et justo consectetur mattis. Curabitur gravida ullamcorper ante, a sodales odio tempor ut. Pellentesque non mauris rhoncus metus porttitor elementum. Nulla ullamcorper, orci quis tincidunt mattis, nunc risus congue arcu, vitae feugiat nunc enim et augue.<br><br><br><p>Would you like to know more ?<p><br><br><br><p>You wont but here are some cat pics.</p><br><img src='https://images.unsplash.com/photo-1561389881-a5d8d5549588?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2370&q=80' alt='cat pic' width='400' height ='200'><br><br><img src='https://images.unsplash.com/photo-1526336024174-e58f5cdd8e13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80' alt='cat pic2' width='400' height ='500'><br><br><img src='https://images.unsplash.com/photo-1605450648855-63f9161b7ef7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80' alt='cat pic3' width='400' height ='400'><p> Click on the button below to start the quiz</p>",learning_id: learning.id)
lecture.save!
puts "lecture added to learning"

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
