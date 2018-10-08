class RpgsController < ApplicationController
  def index
    unless session.has_key? :gold
      session[:gold] = 0
    end
    unless session.has_key? :activity
      session[:activity] =[]
    end
    @values = {
      farm: rand(10..20),
      cave: rand(5..10),
      house: rand(2..5),
      casino: rand(-50..50)
    }
  end

  def process_gold
    if params[:place] == "farm"
      session[:gold] += params[:farm].to_i
      earned = params[:farm].to_i
    end
    if params[:place] == "cave"
        session[:gold] += params[:cave].to_i
        earned = params[:cave].to_i
    end
    if params[:place] == "house"
      session[:gold] += params[:house].to_i
      earned = params[:house].to_i
    end
    if params[:place] == "casino"
      g = rand(-50..50)
      session[:gold] += g
      earned = g
    end
    temp = session[:activity]
    temp.reverse!
    if earned > 0
      temp.push({text: "Earned #{earned} gold from the #{params[:place]}! at #{DateTime.now}", color: "green"})
    end
    if earned <= 0
      temp.push({text: "Entered a Casino and lost #{earned}... Ouch!!! at #{DateTime.now}", color: "red"})
    end
    temp.reverse!
    session[:activity] = temp
    session[:activity].each do |i|
    end
    redirect_to "/"
  end
end