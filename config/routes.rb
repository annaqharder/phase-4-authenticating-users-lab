Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  #route to retrieve user's data from database using the sessions hash
  get "/me", to: "users#show"

  #route to login
  post "/login", to: "sessions#create"
  #route to logout
  delete "/logout", to: "sessions#destroy"
end
