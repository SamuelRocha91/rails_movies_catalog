Rails.application.routes.draw do
  root to: "movies#index"
  resources :movies
  resources :movie_genres
  resources :directors
end
