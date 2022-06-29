Rails.application.routes.draw do
  devise_for :users

  get 'courses', to: 'courses#index'
  get 'courses/new', to: 'courses#new'
  post 'courses', to: 'courses#create'
  get 'courses/:id/edit', to: 'courses#edit'
  put 'courses/:id', to: 'courses#update'
  
  get 'units/:id/edit', to: 'units#edit'
  put 'units/:id', to: 'units#update'

  # Defines the root path route ("/")
  root "courses#index"
end
