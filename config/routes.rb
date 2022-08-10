Rails.application.routes.draw do
  get 'shows/wishlist'
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
  get "/signout", to: "sessions#destroy", as: :destroy_session

  get "/add_products", to: "adds#new"
  post "/add_products", to: "adds#create"

  get "/list_products", to: "lists#new"

  get '/wishlist/:product_id', to: 'lists#wishlist_items'
  get '/wishlists', to: 'shows#wishlist'
  
  get '/cart/:product_id', to: 'lists#add_cart_items'
  get '/cart', to: 'shows#cart'
end