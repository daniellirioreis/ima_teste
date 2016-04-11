ImaTeste::Application.routes.draw do

  resources :order_of_services

  resources :productives

  resources :clients do 
    get :autocomplete_client_name, :on => :collection
  end

get "monitor/index"
  
resources :schedules

  resources :vehicles

  resources :technical_consultants

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
