Rails.application.routes.draw do
  devise_for :users
  get 'trainers', to: 'trainers#index'

  get 'trainers/new', to: 'trainers#new'
  get 'trainers/:id', to: 'trainers#show', as: 'trainer'

  get 'trainers/:id/edit', to: 'trainers#edit'
  put 'trainers/:id', to: 'trainers#update'
  post 'trainers', to: 'trainers#create'
  delete 'trainers/:id', to: 'trainers#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'trainers#index'
end
