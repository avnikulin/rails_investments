Rails.application.routes.draw do

  resources :portfolios do
    get 'holdings/all/edit' => 'holdings#edit_all', :as => :edit_all
    match 'holdings/all' => 'holdings#update_all', :as => :update_all, :via => :put
    resources :transactions
    resources :holdings do
      get :autocomplete_stock_name, :on => :collection
      
      get 'all/edit' => 'holdings#edit_all', :as => :edit_all
      #match 'users/all/edit' => 'users#edit_all', :as => :edit_all, :via => :get
          #match 'edit_all', :via => :get
      match 'all' => 'holdings#update_all', :as => :update_all, :via => :put
        
    end
    #get :autocomplete_stock_symbol, :on => :collection
  end
#get 'portfolios/:id/holdings/all/edit' => 'holdings#edit_all', :as => :edit_all
  #resources :holdings

  resources :stocks

  resources :favorites

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
