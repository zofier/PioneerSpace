Rails.application.routes.draw do
  devise_for :users
  resources :pioneertypes do
    resources :comments, only: :create
    collection do
      get 'popular'
      get 'newest'
    end
  end
  resources :users, only: :show
  root 'pioneertypes#index'
end
