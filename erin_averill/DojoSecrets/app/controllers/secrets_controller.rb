class SecretsController < ApplicationController
  def index
  	@secrets = Secret.all
  	@likes = Like.all
  end

  def create
  	secret = Secret.create(secret_params.merge({user_id: current_user.id}))
  	redirect_to "/users/#{current_user.id}"
  end

  def destroy
  	# puts current_user, "!!!"
  	secret = Secret.find(params[:id])
  	secret.destroy
  	redirect_to "/users/#{current_user.id}"
  end

  private
  def secret_params
  	params.require(:secret).permit(:content)
  end
end
