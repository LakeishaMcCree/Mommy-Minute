Rails.application.routes.draw do
  root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #resources :blogs # index new create show edit update destroy
  
  #index
  get "/blogs", to: "blogs#index", as: "blogs"

  #new / create
  get "/blogs/new", to: "blogs#new", as: "new_blog"
  post "/blogs", to: "blogs#create"


end

# first argument is the route we want to give it, second argument is a key value, this will go to the folder, then run the index.html.erb
# RESTful Routes index, show, new, create edit update destroy