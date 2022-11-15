Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/colors", to: "pages#home"
  get "/colors/:id", to: "pages#home"
  post "/colors", to: "pages#create"
  delete "/colors/:id", to: "pages#destroy", as: "destroy_color"

  # get    "colors",          to: "colors#index"
  # # Create
  # get    "colors/new",      to: "colors#new",  as: :new_restaurant
  # post   "colors",          to: "colors#create"
  # # Read one - The `show` route needs to be *after* `new` route.
  # get    "colors/:id",      to: "colors#show", as: :restaurant
  # # Update
  # get    "colors/:id/edit", to: "colors#edit", as: :edit_restaurant
  # patch  "colors/:id",      to: "colors#update"
  # # Delete
  # delete "colors/:id",      to: "colors#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
