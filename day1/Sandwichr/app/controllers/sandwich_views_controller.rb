class SandwichViewsController < ApplicationController
	def index
		@sandwich_array = Sandwich.all

		render "index"
		
	end

	def show
		@sandwich = Sandwich.find(params[:id])
		@ingredients = @sandwich.ingredients
		@ingredients_array = Ingredient.all
		render "show"
	end

end
