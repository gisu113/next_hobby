Rails.application.routes.draw do
  root 'users#index'

  get '/rankings', to: 'posts#rankings'
 
  devise_for :users
  resources :posts, only: [:new, :index, :create, :show, :destroy, :edit, :update]
  resources :posts, only: [:index, :new, :create] do
    resource :likes, only: [:create, :destroy]
  end
end