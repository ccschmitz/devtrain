Rails.application.routes.draw do
  resources :lessons, only: [:index, :show]
  resources :series, only: [:index, :show]
  resources :topics, only: [:index, :show]
  resources :workshops, only: [:index, :show]

  get :about, to: 'pages#about'
  get :faq, to: 'pages#faq'
  get :requests, to: redirect('http://uservoice.com')
  get :support, to: redirect('http://intercom.io')

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  root to: 'pages#home'
end
