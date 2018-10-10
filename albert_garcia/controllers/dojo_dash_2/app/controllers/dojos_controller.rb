class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
    @count = Dojo.count
  end

  def new
  end

  def create
    @new_dojo = Dojo.create(dojo_params)
    redirect_to "/"
  end
  
  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
