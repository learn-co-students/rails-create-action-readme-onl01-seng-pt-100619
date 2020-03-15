Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #post "/posts", to: "posts#create"
end

# when the routes are added with resources and no exemptions there is already a create route for the model
