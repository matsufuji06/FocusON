Rails.application.routes.draw do
  devise_for :users
  root "tasks#index"

  resources :tasks
  resources :lists, only: [:new, :create, :edit, :update, :destroy]
end
