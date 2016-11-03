Rails.application.routes.draw do

  root "sessions#new"

  resources :users
  resources :countries do
    resources :slangs
  end

  resources :sessions, only: [:new, :create, :destroy]
  # Create a better looking URL for logging in
  get '/login', to: 'sessions#new'



end
