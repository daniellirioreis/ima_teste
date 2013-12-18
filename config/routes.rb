ImaTeste::Application.routes.draw do
  get '/dashboard', :to => 'dashboard#index', :as => :dashboard

  resources :categories
  resources :products

  root :to => redirect('/dashboard/')
end
