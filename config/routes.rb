Rails.application.routes.draw do
  resources :managers
  resources :venues
  resources :admins

  resources :reviews, only: [:index, :show, :create, :destroy]

  resources :bookings
  resources :mpesas

  post "/stkpush", to: "mpesas#stkpush"
  post "/polling_payment", to: "mpesas#polling_payment"

  resources :admins , only: [:index, :show, :create, :destroy]
  post "/admins/login", to: "sessions#create_admin"
  post "/admins/sign_up", to: "admins#create"
  get "/admins/me", to: "admins#show"
  delete "admins/logout", to: "sessions#destroy_admin"



     #client
 resources :clients, only: [:index, :show, :create, :destroy]

 # Sessions
 post "/clients/login", to: "sessions#client_login_session"
 delete "/clients/logout", to: "sessions#client_destroy_session" 
 post "/managers/login", to: "sessions#manager_login_session"
 delete "/managers/logout", to: "sessions#manager_destroy_session"

 #manager
 resources :managers, only: [:index, :show, :create, :destroy]
 get "/managers", to: "managers#index"
 get "/managers/me", to: "managers#show"

 #Bookings and venues
  resources :bookings,  only: [:index, :show, :create, :update, :destroy]
  resources :venues, only: [:create, :update, :destroy, :index, :show]


end
