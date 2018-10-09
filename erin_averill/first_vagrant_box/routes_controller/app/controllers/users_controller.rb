class UsersController < ApplicationController
	def index
		@users = User.all
		# render json: @users
	end

	def create 
		@user = User.create(name: params[:name])
		redirect_to '/users'
	end

	def show
		render json: User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def total
		users = User.all
		@counter = 0
		puts @counter
		users.each do |user|
			@counter += 1
			puts user
		end
	end

end