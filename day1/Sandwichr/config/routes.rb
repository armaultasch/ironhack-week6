Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
    resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
    get "/sandwiches/:id/show" => "sandwiches#show"
scope "/api" do
  resources :sandwiches
  resources :ingredients
  post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
