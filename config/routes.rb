Rails.application.routes.draw do
  resources :reviews
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
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
