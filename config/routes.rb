Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :blogs # index new create show edit update destroy
  
  get('/blogs', to: 'blogs#index')

end

# first argument is the route we want to give it, second argument is a key value, this will go to the folder, then run the index.html.erb