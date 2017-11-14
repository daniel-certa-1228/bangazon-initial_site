Rails.application.routes.draw do

  get 'sessions/new'

  resources :order_details
  resources :orders
  resources :payment_methods
  resources :products
  resources :product_types
  resources :customers
  resources :sessions

  get 'signup', to: 'customers#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
