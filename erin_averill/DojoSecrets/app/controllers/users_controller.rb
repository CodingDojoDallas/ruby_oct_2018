class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  # before_action :route_matching, only: [:edit, :update, :destroy, :show]
  def new
  end

  def create
  	user = User.create(user_params)
  	if user.valid?
  		# puts '******* valid'
  		session[:user_id] = user.id
		  redirect_to "/users/#{user.id}"
	else
		# puts '!!!!!! invalid'
		flash[:errors] = user.errors.full_messages
		redirect_to '/users/new'
	end
  end

  def show
    @user = current_user
    @secrets = Secret.where(user_id: current_user.id)
    puts current_user.id, '*******'
    puts params[:id]
  end

  def edit
  	@user = current_user
  end

  def update
  	user = User.find(params[:id])
  	user.update(user_params)
  	if user.valid?
  		user.save
  		redirect_to "/users/#{user.id}"
  	else
  		flash[:errors] = user.errors.full_messages
  		redirect_to "/users/#{user.id}/edit"
  	end
  end

  def destroy
  	user = User.find(params[:id])
  	user.destroy
  	session[:user_id] = nil
  	redirect_to '/users/new'
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  private
  def route_matching
    unless current_user.id != params[:id]
      redirect_to "/users/#{current_user.id}"
    end
  end
end
