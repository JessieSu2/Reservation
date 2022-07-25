Rails.application.routes.draw do
  resources :reservationtables
  resources :reservations
  #get 'reservations/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'reservations/home'
  get 'reservations/RSVP'
  root 'reservations#index'
end
