Rails.application.routes.draw do
  get 'reviews/rating:string'
  get 'reviews/content:text'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show"
  get "restaurants/:id/edit", to: "restaurants#edit"
  patch "restaurants/:id", to: "restaurants#update"
  delete "restaurants/:id", to: "restaurants#destroy"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "restaurants#index"

end
