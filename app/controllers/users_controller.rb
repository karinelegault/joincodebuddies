class UsersController < ApplicationController
    def index
        @users = User.all

        @markers = @users.map do |user|
            {
              lat: user.latitude,
              lng: user.longitude
            }
          end
    
    end

    def show
        params
        @user = User.find(params[:id])
    end
end
