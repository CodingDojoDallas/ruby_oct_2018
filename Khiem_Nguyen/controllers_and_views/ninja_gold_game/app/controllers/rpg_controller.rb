class RpgController < ApplicationController
    def index
        unless session[:gold]
            session[:gold] = 0
        end
        unless session[:activities]
            session[:activities] = []
        end
    end

    def farm
        gold = Random.rand(10..20)
        session[:gold] += gold
        session[:activities] << { msg: "You earned #{gold} from the farm"}
        redirect_to root_path
    end

    def cave
        gold = Random.rand(5..10)
        session[:gold] += gold
        session[:activities] << { msg: "You earned #{gold} from the cave"}
        redirect_to root_path
    end

    def house
        gold = Random.rand(2..5)
        session[:gold] += gold
        session[:activities] << { msg: "You earned #{gold} from the house"}
        redirect_to root_path
    end

    def casino
        gold = Random.rand(-50..50)
        session[:gold] += gold
        session[:activities] << { msg: "You earned #{gold} from the casino"}
        redirect_to root_path
    end

end
