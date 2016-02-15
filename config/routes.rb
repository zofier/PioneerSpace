Rails.application.routes.draw do
  devise_for :users
  resources :pioneertypes, only: [:show, :index, :new, :create]
  resources :users, only: :show
end
