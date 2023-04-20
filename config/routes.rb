Rails.application.routes.draw do
 
  devise_for :users
  resources :inventories, only: [:index, :show, :new, :create, :destroy]
 
  resources :foods, only: [:index, :new, :create, :destroy]
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
