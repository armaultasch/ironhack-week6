class SessionsController < ApplicationController
	# //display login form
	def new
	end
	# //create session
	# //post/login
	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to "/"
		else
			redirect_to "/login"
		end
	end
	# //destroy session
	def destroy
		session.clear
		redirect_to "/"
	end
end
