Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
  end
end

# -------old way------
# namespace :api do
#   get "/laptop" => "products#laptop"
# end

# namespace :api do
#   get "/hdmi" => "products#hdmi"
# end

# namespace :api do
#   get "/pen" => "products#pen"
#   get "/any" => "products#any_product"
# end
