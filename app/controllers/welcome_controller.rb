class WelcomeController < ApplicationController 
    def homepage 
        redirect_to '/login' unless current_user
    end 
end 