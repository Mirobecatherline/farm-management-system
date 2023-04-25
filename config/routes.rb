Rails.application.routes.draw do
  resources :farmerberries
  resources :farmers
  resources :factoryfarmberries
  resources :coffeberries
  resources :workers
  resources :expenditures
  resources :factoryfarms
  resources :factories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "farmers#index"
end
