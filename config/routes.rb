Rails.application.routes.draw do
  get 'courses', to: 'courses#index'
  get 'courses/new', to: 'courses#new'
  post 'courses', to: 'courses#create'
  get 'courses/:id/edit', to: 'courses#edit'
  put 'courses/:id', to: 'courses#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "courses#index"
end
