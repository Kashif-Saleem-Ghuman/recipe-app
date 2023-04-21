# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'ALice', email: "alice@gmail.com", password: "123456")


apples = Food.create(name: 'Apple', measurement_unit: 'units', price: 5.0, user_id: first_user.id)
tomatoes = Food.create(name: 'Tomato', measurement_unit: 'units', price: 2.0, user_id: first_user.id)
potatoes = Food.create(name: 'Potato', measurement_unit: 'units', price: 3.0, user_id: first_user.id)

first_recipe = Recipe.create(name: 'Stuffed Chicken Breast', preparation_time: '1h', cooking_time: '1h',
                             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                             public: true, user_id: first_user.id)

third_recipe = Recipe.create(name: 'Chicken Cashewnuts', preparation_time: '1h', cooking_time: '1h',
                             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                             public: true, user_id: first_user.id)
                          
second_recipe = Recipe.create(name: 'Kung Pao Chicken', preparation_time: '1h', cooking_time: '1h',
                             description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                             public: true, user_id: first_user.id)
RecipeFood.create(quantity: 5, recipe_id: first_recipe.id, food_id: tomatoes.id)
RecipeFood.create(quantity: 2, recipe_id: first_recipe.id, food_id: potatoes.id)