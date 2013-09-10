class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def dashboard
    @json1 = PointOfView.all.to_gmaps4rails do |locations, marker|
      marker.picture({
                  :picture => "http://www.google.com/intl/en_us/mapfiles/ms/micons/red-dot.png",
                  :width   => 32,
                  :height  => 32
      })
    end

    @json2= Task.active.to_gmaps4rails do |locations, marker|
      marker.picture({
        :picture => "http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png",
        :width   => 32,
        :height  => 32
      })
    end

    @json = (JSON.parse(@json1) + JSON.parse(@json2)).to_json
  end
  
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
