Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :posts, only: [:new, :index, :create, :show, :destroy, :edit, :update]
  get '/posts', to: 'posts#index'
end
