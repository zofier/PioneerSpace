Rails.application.routes.draw do
  devise_for :users
  namespace :pioneertypes do
    resources :populars, only: :index
    resources :newests, only: :index
  end
  resources :pioneertypes do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
  root 'pioneertypes#index'
end
