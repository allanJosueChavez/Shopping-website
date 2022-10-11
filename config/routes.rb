Rails.application.routes.draw do
  resources :reviews
  resources :discounts
  resources :promos
  resources :items
  resources :products
  resources :orders
  devise_for :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
