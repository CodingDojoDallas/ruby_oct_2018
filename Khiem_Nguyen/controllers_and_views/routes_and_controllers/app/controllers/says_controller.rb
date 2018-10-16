class SaysController < ApplicationController

    def hellocd
        render text: 'Hello CodingDojo!'
    end

    def hello
        render text: 'Saying Hello!'
    end

    def helloJoe
        render text: 'Saying Hello Joe!'
    end

    def helloMichael
        redirect_to '/say/hello/joe'
    end

    def index
        render text: 'What do you want me to say???'
    end

    def times
        if session.has_key?(:count)
        session[:count] += 1
        else
        session[:count] = 1
        end

        render text: 'You have visited this url %d times' % session[:count]
    end

    def destroy
        session.clear
        render text: 'Destroyed the session!'
    end




end
