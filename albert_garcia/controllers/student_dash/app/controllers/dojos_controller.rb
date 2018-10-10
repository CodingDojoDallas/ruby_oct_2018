class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
    @count = Dojo.count
  end

  def new
  end

  def show
    @show = Dojo.find(params[:id])
  end

  def edit
    @edit_dojo = Dojo.find(params[:id])
  end

  def update
    @update_dojo = Dojo.find(params[:id])
    @update_dojo.update(dojo_params)
    redirect_to '/'
  end

  def create
    @new_dojo = Dojo.create(dojo_params)
    redirect_to "/"
  end
  
  def destroy
    @delete = Dojo.find(params[:id])
    @delete.destroy
    redirect_to '/'
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
