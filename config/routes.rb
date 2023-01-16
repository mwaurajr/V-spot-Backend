Rails.application.routes.draw do
  resources :venues
  resources :bookings
  resources :mpesas

  post "/stkpush", to: "mpesas#stkpush"
  post "/polling_payment", to: "mpesas#polling_payment"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
