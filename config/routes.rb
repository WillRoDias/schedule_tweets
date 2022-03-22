Rails.application.routes.draw do
  # GET /about
  # root "about#index"
  get "about", to: "about#index" # Aponta para o controller "about"
  root to: "main#index" # Aponta para o controller "main" e "root" indica que é a página principal
  # Defines the root path route ("/")
  # root "articles#index"
  
  get "password", to: "passwords#edit"
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
end
