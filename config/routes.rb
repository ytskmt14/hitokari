Rails.application.routes.draw do
  root 'users#index'

  get 'users/index'
  get 'users/show'
  get 'users/update'
  get 'users/edit'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
