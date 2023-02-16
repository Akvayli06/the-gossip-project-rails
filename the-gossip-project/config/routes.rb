
Rails.application.routes.draw do
  root 'gossips#index'
  get '/welcome', to: 'gossips#index'
  resources :gossips
  resources :cities
  resources :users
  
  # get '/salut', to: 'gossips#dynamique'
  # get '/team', to: 'team#team'
  # get '/contact', to: 'contact#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
