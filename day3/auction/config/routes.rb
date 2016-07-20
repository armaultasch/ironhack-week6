Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
  	resources :products do
  		resources :bids
  	end
  end
	# get '/users', to: 'user#index'
	# get '/users/new', to: 'user#new'
	# post '/users/new', to: 'user#new'
	# post '/users', to: 'user#create'
	# get '/users/:id', to: 'user#show'
	# get '/users/:user_id/products', to: 'product#index'
	# get '/users/:user_id/products/new', to: 'product#new'
	# post '/users/:user_id/products',
	# 	to: 'product#create', as: :user_products
	# get '/users/:user_id/products/:product_id', to: 'product#show'
end
