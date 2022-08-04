Rails.application.routes.draw do
  get 'lists/new'
  get 'adds/new'
  get 'sessions/new'
  get 'registration/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homes#index"
  get "/sign_up", to: "registration#new"
  post "/sign_up" , to: "registration#create"

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "signout", to: "sessions#destroy", as: :destroy_session

  get "/add_products", to: "adds#new"
  post "/add_products", to: "adds#create"
end