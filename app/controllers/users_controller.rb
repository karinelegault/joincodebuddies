class UsersController < ApplicationController
    def index
      @user = current_user
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
      @user = current_user
        params
        @user = User.find(params[:id])
    end
end

