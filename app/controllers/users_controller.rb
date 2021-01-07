class UsersController < ApplicationController
    
    def new
        # binding.pry
    end

    def create
        # if user.authenticate(params[:user][:password])
        #      redirect_to '/signup'
        # else
            user = User.create(user_params)
            session[:user_id] = user.id
            # binding.pry
            redirect_to '/signup' unless user.password == user.password_confirmation
        end

    # def login


    # end
     
    private
     
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

    
end
