class LikesController < ApplicationController
  def create
  	@likes = Like.create(user_id: current_user.id, secret_id: params[:secret_id])
  	redirect_to '/secrets'
  end

  def destroy
  	like = Like.find_by(user_id: current_user.id, secret_id: params[:secret_id])
  	like.destroy
  	redirect_to '/secrets'
  end
end
