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
                lng: user.longitude,
                infoWindow: render_to_string(partial: "info_window", locals: { user: user })
                
              }
          end
        end
  end

    def show
      @user = current_user
      @projects = Project.where(user_id: @user.id)
        params
        @user = User.find(params[:id])
    end
end

