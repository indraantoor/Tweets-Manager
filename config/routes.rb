Rails.application.routes.draw do
  #GET /about
  get "about", to: "about#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "main#index"
end
