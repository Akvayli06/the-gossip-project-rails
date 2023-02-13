Rails.application.routes.draw do
  root 'welcome#welcome'
  get '/welcome', to: 'welcome#welcome'
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
