class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
    # unless session[:user_id] != nil
    #   redirect_to "/users/#{session[:user_id]}"
    # end
  end

  def create
  	# User.find_by_email('o@gmail.com').try(:authenticate, 'password')
    # puts params, '??????'
  	user = User.find_by_email(params[:email]).try(:authenticate, params[:password])#User.where(email: params[:email])
  	# puts user, '******'
    if user #&& user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to "/users/#{user.id}"
  	else
  		flash[:errors] = ["Invalid Combination"]
  		redirect_to "/sessions/new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/sessions/new'
  end
end
