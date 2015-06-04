Rails.application.routes.draw do
  resources :holdings

  resources :stocks

  resources :favorites

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
