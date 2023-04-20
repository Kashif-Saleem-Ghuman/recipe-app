Rails.application.routes.draw do
  devise_for :users
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes, only: [:index, :show, :destroy, :new, :create] do
     resources :recipe_foods, only: [:new, :create, :destroy]
  end
  get 'public_recipes', to: 'recipes#public_recipes'
  get 'shopping_list', to: 'shopping_list#index'

  match 'recipes/:recipe_id' => 'recipes#toggle_public', as: :toggle_public, via: :patch
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
