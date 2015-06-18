Rails.application.routes.draw do

  resources :portfolios do
    resources :transactions
    resources :holdings
    get :autocomplete_stock_symbol, :on => :collection
  end

  #resources :holdings

  resources :stocks

  resources :favorites

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
