Rails.application.routes.draw do
  devise_for :users
  resources :pioneertypes do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
  root 'pioneertypes#index'
end
