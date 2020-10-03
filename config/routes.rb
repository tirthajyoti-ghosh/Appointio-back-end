Rails.application.routes.draw do
  root to: 'static#home'

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
end
