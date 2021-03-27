class UsersController < ApplicationController
    def index
          if params[:q].present?
            @users = User.search_by_username(params[:q])
            # raise
          else
            @users = User.all

            @markers = @users.map do |user|
              {
                lat: user.latitude,
                lng: user.longitude
              }
          end
        end           
  end

    def show
        params
        @user = User.find(params[:id])
    end
end

