Rails.application.routes.draw do
  root 'welcome#index'


  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"


  get 'login', to: "sessions#new"
  post '/signin', to: "sessions#create" 
  delete '/signout', to: "sessions#destroy"


  resources :messages
  resources :halls, param: :url


end
