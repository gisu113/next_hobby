# config/routes.rb
Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :posts, only: [:new, :create]
end
