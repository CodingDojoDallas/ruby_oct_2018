class FormsController < ApplicationController
  def index
  end

  def result

  end

  def submit
    if session.has_key?(:count)
    session[:count] += 1
    else
    session[:count] = 1
    end

    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    redirect_to result_path, notice: "Thanks for submitting this form! You have submitted this form #{session[:count]} times now"
  end
end
