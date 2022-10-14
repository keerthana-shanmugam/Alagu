# frozen_string_literal: true

Rails.application.routes.draw do
  get 'shows/wishlist'
  get 'lists/new'
  get 'adds/new'
  get 'sessions/new'
  get 'registration/new'
  get 'homes/PageBuilding'
  # get 'adds/catogeries'
  # get 'adds/sub_catogeries'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get '/sign_up', to: 'registration#new'
  post '/sign_up', to: 'registration#create'

  get '/signin', to: 'sessions#new', as: :new_sessions
  post '/signin', to: 'sessions#create', as: :sessions
  get '/signout', to: 'sessions#destroy', as: :destroy_session

  get '/add_products', to: 'adds#new'

  post '/adding_products', to: 'adds#create'

  get '/list_products', to: 'lists#new', as: :list_products
  delete '/product_list_delete/:id', to: 'lists#product_list_delete'

  get '/wishlist/:product_id', to: 'lists#wishlist_items'
  get '/wishlists', to: 'shows#wishlist'
  delete '/wishlist_delete/:id', to: 'shows#wishlist_delete'

  get '/cart/:product_id', to: 'lists#cart_items'
  get '/cart', to: 'shows#cart'
  delete '/cart_delete/:id', to: 'shows#cart_delete'
  

  match '/search', to: 'lists#search', via: :get

  get '/filter_catogeries', to: 'lists#filter'

  post 'cart', to: 'lists#cart_items'

  get 'filter', to: 'adds#filter'

  # get '/add_catogeries', to: 'adds#new'
  # post '/add_catogeries', to: 'adds#add_catogeries'

  # get '/add_sub_catogeries', to: 'adds#new'
  # post '/add_sub_catogeries', to: 'adds#add_sub_catogeries'
end
