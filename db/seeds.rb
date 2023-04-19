# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Tom', email: "tom@gmail.com", password: "123456")

apples = Food.create(name: 'Apple', measurement_unit: 'units', price: 5.0, user_id: first_user.id)
tomatoes = Food.create(name: 'Tomato', measurement_unit: 'units', price: 2.0, user_id: first_user.id)
potatoes = Food.create(name: 'Potato', measurement_unit: 'units', price: 3.0, user_id: first_user.id)