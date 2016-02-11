Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update, :show] # この行のshowはmypage
end
