Rails.application.routes.draw do

  resources :portfolios do
    get 'holdings/all/edit' => 'holdings#edit_all', :as => :edit_all
    match 'holdings/all' => 'holdings#update_all', :as => :update_all, :via => :put
    member do
        get 'basic'
        #get 'detailed'
        get 'transactions'
    end
    resources :transactions
    resources :holdings do
      
      get :autocomplete_stock_name, :on => :collection
      get 'all/edit' => 'holdings#edit_all', :as => :edit_all
      match 'all' => 'holdings#update_all', :as => :update_all, :via => :put
        
    end

  end

  resources :stocks

  resources :favorites

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
