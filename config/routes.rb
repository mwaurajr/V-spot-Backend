Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
     #client
 post "/clients/signup", to: "clients#create"
 get "/clients/me", to: "clients#show"
 get "/clients", to: "clients#index"


 # Sessions
 post "/clients/login", to: "sessions#client_login_session"
 delete "/clients/logout", to: "sessions#client_destroy_session" 
 post "/managers/login", to: "sessions#manager_login_session"
 delete "/managers/logout", to: "sessions#manager_destroy_session"

 #manager
 post "/managers/signup", to: "managers#create"
 get "/managers", to: "managers#index"
 get "/managers/me", to: "managers#show"

end
