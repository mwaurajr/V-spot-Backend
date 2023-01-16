Rails.application.routes.draw do

  resources :reviews, only: [:index, :show, :create, :destroy]

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



     #client
 #post "/clients/signup", to: "clients#create"
 resources :clients, only: [:index, :show, :create, :destroy]
#  get "/clients/me", to: "clients#show"
#  get "/clients", to: "clients#index"


 # Sessions
 post "/clients/login", to: "sessions#client_login_session"
 delete "/clients/logout", to: "sessions#client_destroy_session" 
 post "/managers/login", to: "sessions#manager_login_session"
 delete "/managers/logout", to: "sessions#manager_destroy_session"

 #manager
 #post "/managers/signup", to: "managers#create"
 resources :managers, only: [:index, :show, :create, :destroy]
 get "/managers", to: "managers#index"
 get "/managers/me", to: "managers#show"


end
