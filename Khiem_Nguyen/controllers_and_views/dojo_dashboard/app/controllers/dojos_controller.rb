class DojosController < ApplicationController
    def index
      @dojos = Dojo.all
    end

    def edit
        @dojo = Dojo.find(params[:id])

    end

    def update
        @dojo = Dojo.find(params[:id])
        @dojo.update(user_params)
        unless @dojo.valid?
            flash[:error] = "One or more of input is invalid"
            redirect_to '/dojos/new'
        else
            redirect_to '/dojos'
        end

    end

    def new
    end

    def show
        @dojo = Dojo.find(params[:id])
    end

    def create
        @dojo = Dojo.create(branch:params[:branch],street:params[:street],city:params[:city],state:params[:state])

        unless @dojo.valid?
            flash[:error] = "One or more of input is invalid"
            redirect_to '/dojos/new'
        else
            redirect_to '/dojos'
        end
    end

    def destroy
        @dojo = Dojo.find(params[:id]).destroy
        redirect_to '/dojos'
    end

    private
        def user_params
            params.require(:dojo).permit(:branch,:street,:city,:state)
        end

end
