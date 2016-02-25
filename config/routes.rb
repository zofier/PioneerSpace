Rails.application.routes.draw do
  devise_for :users
  resources :pioneertypes
  resources :users, only: :show
  root 'pioneertypes#index'
end
