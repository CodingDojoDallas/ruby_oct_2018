class SayController < ApplicationController
    def index
        render :text => "What do you want me to say"
    end
    def hello
        render :text => "Saying Hello"
    end
    def joe
        render :text => "Saying Hello Joe"
    end
    def michael
        redirect_to "/say/hello/joe"
    end
    def times
        if session.has_key? :count
            session[:count] += 1
        else session[:count] = 1
        end
        render :text => "You have visited this URL #{session[:count]} times"
    end
    def reset
        session.clear
        render :text => "Session has been destroyed"
    end
end
