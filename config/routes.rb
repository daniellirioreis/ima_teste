ImaTeste::Application.routes.draw do

  resources :order_of_services do 
    get :exchange_status, on: :member        
  end

  resources :productives do 
    get :autocomplete_productive_name, :on => :collection
  end

  resources :clients do 
    get :autocomplete_client_name, :on => :collection
  end
  
  resources :technical_consultants do 
    get :autocomplete_technical_consultant_name, :on => :collection
  end
  
  get "monitor/index"
  
  resources :schedules

  resources :vehicles
  
  get '/dashboard', :to => 'dashboard#index', :as => :dashboard

  resources :categories
  resources :products do
    member do
      put :activate
      put :deactivate
    end
    collection do
      get :actions_with_selected
    end
  end

  root :to => redirect('/dashboard/')
end
