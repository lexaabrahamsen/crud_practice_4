Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
  get "/photos" => "photos#index"
  get "/photos/:id" => "photos#show"
  post "/photos" => "photos#create"
  get "/photos/:id/edit" => "photos#edit"
  patch "/photos/:id" => "photos#update"
  delete "/photos/:id" => "photos#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
  end
end
