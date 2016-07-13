Rails.application.routes.draw do
  root 'welcome#index'

  mount ActionCable.server => '/cable'

  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"


  get 'signin', to: "sessions#new"
  post '/signin', to: "sessions#create" 
  delete '/signout', to: "sessions#destroy"


  resources :messages
  resources :halls, param: :permalink
end
