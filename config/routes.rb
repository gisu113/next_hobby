Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :posts, only: [:new, :index, :create, :show]
  get '/posts', to: 'posts#index'
end
