Rails.application.routes.draw do
  # GET /about
  # root "about#index"
  get "about", to: "about#index" # Aponta para o controller "about"
  root to: "main#index" # Aponta para o controller "main" e "root" indica que é a página principal
  # Defines the root path route ("/")
  # root "articles#index"
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
end
