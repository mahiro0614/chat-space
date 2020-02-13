Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  # root 'messages#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :create, :edit, :update]
end
