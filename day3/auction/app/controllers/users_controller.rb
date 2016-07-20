class UsersController < ApplicationController
def index
		@my_user = User.order(created_at: "desc")
	
		render "index"
	end
	def new
		@my_user = User.new
		render "new"
	end

	def create
		@my_user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])
		@my_user.save

		redirect_to "/users"
		
	end
	def show
		@my_user = User.find(params[:id])
		render "show"
	end
end
