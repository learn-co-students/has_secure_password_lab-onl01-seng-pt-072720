class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(name: user_params[:name]) # regular `params` aren't automatically permitted, hence calling on the private `user_params` method
        if @user && @user.authenticate(user_params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    end

    private 

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
