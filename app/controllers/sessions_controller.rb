class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            # return head(:forbidden)
            redirect_to login_path
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
