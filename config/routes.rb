Rails.application.routes.draw do
  resources :reviews
  resources :discounts
  resources :promos
  resources :items
  resources :products
  resources :orders
 # devise_for :customers
  #resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    devise_for :customers, controllers: {
      registrations: 'customers/registrations',
      sessions: 'customers/sessions' 
    }
    # devise_scope :customer do
    #   post '/customers/sign_up', to: 'customers/registrations#create', as: :customer_sign_up
    # end
  root "products#index"
end
