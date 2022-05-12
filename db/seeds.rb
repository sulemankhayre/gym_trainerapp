# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  User.destroy_all
  Customer.destroy_all
  Trainer.destroy_all

  users = User.create(email: 'customer1@test.com', password: 'admin123')
  users2 = User.create(email: 'customer2@test.com', password: 'admin123')
  users3 = User.create(email: 'customer3@test.com', password: 'admin123')

  users4 = User.create(email:'trainer1@test.com', password: 'admin123')
  users5 = User.create(email:'trainer2@test.com', password: 'admin123')
  users6 = User.create(email:'trainer3@test.com', password: 'admin123')


  moe = Customer.create(first_name: 'Mohamed', last_name: 'alba', street: '5 elizibeth street', user_id: users.id)
  sam  = Customer.create(first_name: 'Sam', last_name: 'Kane', street: '51 main stret', user_id: users2.id)
  jam = Customer.create(first_name: 'James', last_name: 'Davis', street: '4 Lonsdale Street', user_id: users3.id )


  jane = Trainer.create(first_name: 'Jane', last_name: 'Dawson', description: 'CrossFit', user_id: users4.id)
  harry = Trainer.create(first_name: 'Harry', last_name: 'Greenwood', description: 'Powerlifting', user_id: users5.id)
  edris = Trainer.create(first_name: 'Edris', last_name: 'Shawn', description: 'BodyBuilding', user_id: users6.id )

  puts "Users: #{User.count} "
  puts "Trainers: #{Trainer.count}"
  puts "Customer: #{Customer.count}"
