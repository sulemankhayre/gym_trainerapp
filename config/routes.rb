Rails.application.routes.draw do
  devise_for :users
  resources :trainers
  resources :services


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'trainers#index'
end
