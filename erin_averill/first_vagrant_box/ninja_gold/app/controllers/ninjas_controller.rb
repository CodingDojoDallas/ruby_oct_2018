class NinjasController < ApplicationController
	def index
		unless session.has_key?(:gold)
		 	session[:gold] = 0
		end
		unless session.has_key?(:activities)
			session[:activities] = []
		end
	end

	def process_money
		puts params
		if params["building"] == 'farm'
			gold_added = rand(10..20)
			session[:gold] += gold_added
			session[:activities] << {color: "green", msg:"Earned #{gold_added} from the farm"}
			redirect_to '/'
		end
		if params["building"] == 'cave'
			gold_added = rand(5..10)
			session[:gold] += gold_added
			session[:activities] << {color: "green", msg:"Earned #{gold_added} from the cave"}
			redirect_to '/'
		end
		if params["building"] == 'house'
			gold_added = rand(2..5)
			session[:gold] += gold_added
			session[:activities] << {color: "green", msg:"Earned #{gold_added} from the house"}
			redirect_to '/'
		end
		if params["building"] == 'casino'
			gold_added = rand(-50..50)
			session[:gold] += gold_added
			unless gold_added < 0
				activity = {color: "green", msg:"Earned #{gold_added} from the casino"}
			else
				gold_lost = gold_added.abs
				activity = {color: "red", msg:"Lost #{gold_lost} from the casino"}
			end
			session[:activities] << activity

			redirect_to '/'
		end

	end
end
