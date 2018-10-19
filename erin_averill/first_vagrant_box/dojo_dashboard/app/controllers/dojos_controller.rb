class DojosController < ApplicationController
	def index
		@dojos = Dojo.all
		@counter = 0
		@dojos.each do |dojo|
			@counter += 1
		end
	end

	def create
	end

	def make
		@new_dojo = Dojo.create(dojo_params)
		redirect_to '/dojos'
	end

	def edit
		@show = Dojo.find(params[:id])
		puts @show
	end

	def show
		@show = Dojo.find(params[:id])
		@students = @show.students
	end

	def update
		show = Dojo.find(params[:id])
		show.update(dojo_params)
		redirect_to '/dojos'
	end

	def delete
		show = Dojo.find(params[:id])
		show.destroy
		redirect_to '/dojos'
	end
	private
	def dojo_params
		params.require(:dojo).permit(:branch, :street, :city, :state)
	end
end

