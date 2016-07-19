class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json:sandwiches
	end


	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"}, status:404
			return	
		end

		# render json: {sandwich: sandwich, ingredients: sandwich.ingredients}
		render json: sandwich.to_json(include: [ :ingredients ])
		
	end

	def update 
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json:{error: "sandwich not found"},
			status: 404
		return
	end
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
			status: 404				
			return
			end
				#this "sandwich destroy" is wrong
				sandwich.destroy
				head :no_content
			end


	def add_ingredient
		@my_sandwich = Sandwich.find_by(id: params[:id])
		SandwichIngredient.create(sandwich_id: params[:id], ingredient_id: params[:ingredient_id])
		render json: @my_sandwich.to_json(include: [ :ingredients ])
	end

	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end
end


