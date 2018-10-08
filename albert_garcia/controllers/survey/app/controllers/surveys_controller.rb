class SurveysController < ApplicationController
  def index
    if session.has_key? :survey
      session[:survey] = nil
    end
  end

  def result
  end

  def submit
    if session.has_key? :count
      session[:count] += 1
    else
      session[:count] = 1
    end
    flash[:submit] = "Thanks for submitting the form! you have submitted this form #{session[:count]} times now."
    session[:survey] = {
      name: params[:name],
      location: params[:location],
      language: params[:language],
      comment: params[:comment]
    }
    redirect_to "/surveys/result"
  end
  # def go_back
  #   redirect_to "/surveys/index"
  # end
end
