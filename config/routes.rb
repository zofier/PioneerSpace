Rails.application.routes.draw do
  devise_for :users
  resources :proto, only: [:index, :new]
  resources :users, only: [:edit, :update, :show]#mypage
  resources :top, only: :index
  root 'top#index'
end
