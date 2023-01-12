Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  post "/login", to: "sessions#create"
  post "/sign_up", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

end
