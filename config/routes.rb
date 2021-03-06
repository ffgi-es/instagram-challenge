Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :posts
  resources :users, only: [:show]
  resources :comments, only: [:new, :create]
end
