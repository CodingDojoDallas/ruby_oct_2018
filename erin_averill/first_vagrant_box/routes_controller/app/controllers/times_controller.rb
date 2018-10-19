class TimesController < ApplicationController
	def show
		unless session[:number]
			session[:number] = 1
		else
			session[:number] += 1 
		end
		render text: "You have visited this url #{session[:number]} times"
	end

	def clear
		unless session[:number] = nil
			session[:number] = nil
			render text: "Destroyed the session"
		end
	end
end