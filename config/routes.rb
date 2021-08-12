Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # # Restaurants
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # get "restaurants/:id", to: "restaurants#show"
  # post "restaurants", to: "restaurants#create"

  # # Reviews
  # get "restaurants/:id/reviews/new", to: "reviews#new"
  # post "restaurants/:id/reviews", to:"reviews#create"

  resources :restaurants, only: [ :index, :new, :show, :create ] do

    resources :reviews, only: [ :create ]
    # resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: :destroy
end
