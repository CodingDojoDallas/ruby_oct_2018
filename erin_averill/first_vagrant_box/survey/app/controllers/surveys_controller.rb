class SurveysController < ApplicationController
	def index 
		render 'index'
	end

	def create
		@form = Form.new(form_params)
		redirect_to '/result'
	end	

	def result
		render 'result'
	end

	private
	def form_params
		session[:result] = params.require(:form).permit(:name, :location, :favorite_language, :comment)
		puts session[:result]
	end
end
