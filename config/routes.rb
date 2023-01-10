Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :post, :patch, :destroy]
  resources :clients, only: [:index, :show, :create, :post, :patch, :destroy ]
  resources :managers, only: [:index, :show, :create, :post, :patch, :destroy]
   post '/login', to: 'clients#login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
