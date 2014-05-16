class UsersController < ApplicationController
  	respond_to :json
	protect_from_forgery with: :null_session

	#/users
	def index
		respond_with(User.all)
	end

	#/users/create
	def create
		user = User.create("name" => params[:name], "username" => params[:username], "age"=> params[:age])

		if user.valid? 
			response = { status: "created", data: user }
		else
			response = { status: "failed",  data: user.errors.messages } 
		end 
		
		render json: response 
	end

end