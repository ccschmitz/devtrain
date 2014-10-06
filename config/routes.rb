Rails.application.routes.draw do
  resources :lessons, only: [:index, :show]
  resources :series, only: [:index, :show]
  resources :topics, only: [:index, :show]

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  root to: 'pages#home'
end
