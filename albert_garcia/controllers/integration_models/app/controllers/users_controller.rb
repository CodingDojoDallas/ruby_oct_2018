class UsersController < ApplicationController
  def index
    session[:count] = User.count
    render json: User.all
  end

  def new
  end
  def create
    @user = User.create(name: params[:name])
    redirect_to "/users"
  end
  def edit
    @edit_user = User.find(params[:id])
    puts @edit_user.name
  end
  def total
    render :text => "There are a total of #{session[:count]} users"
  end
  def show
    @user = User.find(params[:id])
    render json: @user
  end
  def update
    update_user = User.find(params[:id])
    update_user.name = params[:name]
    update_user.save
    redirect_to "/users"
  end
end
