Rails.application.routes.draw do

  devise_for :users

  get 'groups/index', as: :user_root

  # Defines the root path route ("/")
  root "static_pages#splash"

  resources :users, :proceedings, :groups
end
