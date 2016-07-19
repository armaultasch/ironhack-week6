Rails.application.routes.draw do
    resources :sandwiches do
	resources :ingredients
	end

	# localhost:3000
	    # /sandwiches/1  /ingredients/3             /add
	post "/sandwiches/:id/ingredients/:ingredient_id/add", to: "sandwiches#add_ingredient"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
