Rails.application.routes.draw do
  root to: 'static#home'

  post :login, to: "sessions#create"
  delete :logout, to: "sessions#destroy"
  get :logged_in, to: "sessions#logged_in"
  resources :registrations, only: [:create]
end
