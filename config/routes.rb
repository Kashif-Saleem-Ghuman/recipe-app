Rails.application.routes.draw do
 
  devise_for :users
  resources :inventories, only: [:index, :show, :new, :create, :destroy] do
    resources :inventory_foods
  end 
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes, only: [:index, :show, :destroy, :new, :create] do
     resources :recipe_foods, only: [:new, :create, :destroy]
     resources :general_shopping_list, only: [:index ,:show]
  end
  get 'public_recipes', to: 'recipes#public_recipes'
  post 'shopping_list/recipe_id=:recipe_id', to: 'recipes#generate_list', as: 'generate_shopping_list'
  get 'shopping_list/recipe_id=:recipe_id&inventory_id=:inventory_id', to: 'recipes#generate', as: "shopping_list"

  match 'recipes/:recipe_id' => 'recipes#toggle_public', as: :toggle_public, via: :patch
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
