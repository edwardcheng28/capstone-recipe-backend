Rails.application.routes.draw do
  #Authentication signup, login (Create JSON Token)
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/ingredients/:id" => "ingredients#show"
  get "/ingredients" => "ingredients#index"
  post "/ingredients" => "ingredients#create"

  # get "/recipes/:id" => "recipes#show"
  # get "/recipes" => "recipes#index"
end

# Not MVP

# ingredients
# patch "/ingredients/:id" => "ingredients#update"
# delete "/ingredients/:id" => "ingredients#destroy"

# User
# get "/users/:id" => "users#show"
# get "/users" => "users#index"
# post "/users" => "users#create"
# patch "/users/:id" => "users#update"
# delete "/users/:id" => "users#destroy"
