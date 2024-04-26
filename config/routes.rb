Rails.application.routes.draw do
  # Define qual será a página inicial
  root "movies#index"

  # Define novos endereços
  # get "/movies", to: 'movies#index'
  # get "/movies/:id", to: "movies#show"
  resources :movies
end
