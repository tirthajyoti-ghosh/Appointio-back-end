Rails.application.routes.draw do
  post '/login', to: "users#login"
  post '/register', to: "users#create"
  delete '/logout', to: "users#destroy"
  get '/logged_in', to: "users#logged_in"

  resources :types, only: [:index, :show]

  resources :apartments, only: [:index, :show]

  resources :appointments, only: [:index, :create, :destroy]
end
