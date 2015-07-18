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

        
    end

  end

  resources :stocks

  resources :favorites
  
  authenticated :user do
      root :to => "visitors#authorized_index", :as => "authorized_root"
  end
  
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  

end
