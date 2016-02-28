Rails.application.routes.draw do
  devise_for :users
  resources :pioneertypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
  root 'pioneertypes#index'
end
