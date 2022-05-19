Rails.application.routes.draw do
  devise_for :users, :controllers  => { :registrations => 'users/registrations' }
  resources :trainers do
    resources :services
  end
  resources :services
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'trainers#index'
end
