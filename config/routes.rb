Rails.application.routes.draw do
  #Authentication signup, login
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
