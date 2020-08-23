Rails.application.routes.draw do
  root to: "static#home"

  #resources :users

  get "/signup", to: "users#new", as: "signup" #signup_path or signup_url
  post "/signup", to: "users#create"

  delete "/logout", to: "sessions#destroy", as: "logout"

  resources :blogs # index new create show edit update destroy
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #index
  #get "/blogs", to: "blogs#index", as: "blogs"

  #new/create
  #get "/blogs/new", to: "blogs#new", as: "new_blog"
  #post "/blogs", to: "blogs#create"

  #show
  #get "/blogs/:id", to: "blogs#show", as: "blog"

  #edit/update
  #get "/blogs/:id/edit", to: "blogs#edit", as: "edit_blog"
  #patch "/blogs/:id", to: "blogs#update"

  #destroy
  #delete "/blogs/:id", to: "blogs#destroy"
end

# first argument is the route we want to give it, second argument is a key value, this will go to the folder, then run the index.html.erb
# RESTful Routes index, show, new, create edit update destroy