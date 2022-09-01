# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database"
Question.destroy_all
Option.destroy_all
User.destroy_all
Reward.destroy_all
Learning.destroy_all

puts "Making profile"
user = User.new(first_name: "Thomas", last_name: "Ben", city: "Bordeaux", email: "devmaster@recyclearn.com", password: "secret")
user.save!

puts "Making a course"
learning = Learning.new(title: "Animals", topic: "Fox", city: "Bordeaux", difficulty: 1)
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
