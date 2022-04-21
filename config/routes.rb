Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/games" => "games#index"
  get "/games/:id" => "games#show"
  get "/libraries" => "libraries#index"
end
