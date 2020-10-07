Rails.application.routes.draw do
  root to: 'static#home'

  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/logged_in', to: "sessions#logged_in"
  
  resources :registrations, only: [:create]

  get '/types', to: "types#index"
  get '/types/:id', to: "types#show"

  get '/apartments', to: "apartments#index"
  get '/apartments/:id', to: "apartments#show"

  resources :appointments, only: [:index, :create, :update, :destroy]
end
