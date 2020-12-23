class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_params

  def current_user 
    session[:name]
  end 

  private 

  def require_login 
    redirect_to '/login' unless current_user 
  end 

  def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
  end 
end
