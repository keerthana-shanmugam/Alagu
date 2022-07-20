Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homes#index"
  get "registration/new"

  match "/sign_up" , :to => 'registration#create', :via=> :post

  get "signin", to: "sessions#new", as: :new_sessions
  post "signin", to: "sessions#create", as: :sessions
  delete "signout", to: "sessions#destroy", as: :destroy_session


end