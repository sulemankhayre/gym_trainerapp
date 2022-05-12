Rails.application.routes.draw do
  devise_for :users
  get 'trainers', to: 'trainers#index'
  get 'trainers/:id', to: 'trainers#show', as: 'trainer'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'trainers#index'
end
