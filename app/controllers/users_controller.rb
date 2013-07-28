class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def dashboard
    @json = Task.all.to_gmaps4rails
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
