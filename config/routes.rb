Rails.application.routes.draw do
  root to: "movies#index"
  resources :movies do
    collection do
      get 'drafts', to: 'movies#drafts'
    end
  end
  resources :movie_genres
  resources :directors
end
