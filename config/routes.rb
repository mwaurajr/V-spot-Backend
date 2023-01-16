Rails.application.routes.draw do
  resources :venues
  resources :bookings
  resources :mpesas

  post "/stkpush", to: "mpesas#stkpush"
  post "/polling_payment", to: "mpesas#polling_payment"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  post "/login", to: "sessions#create"
  post "/sign_up", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

  resources :admins , only: [:index, :show, :create, :destroy]
  post "/admin/login", to: "sessions#create_admin"
  post "/admin/sign_up", to: "admins#create"
  get "/admin/me", to: "admins#show"
  delete "admin/logout", to: "sessions#destroy_admin"


end
