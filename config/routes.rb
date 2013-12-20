ImaTeste::Application.routes.draw do
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
