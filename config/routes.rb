Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  post 'products/new'
  delete 'products/destroy'
  resources :products
  root 'products#index'
  #root 'top#main'
  get 'top/main'
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
end
