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
      @projects = find_my_projects
    end

    def find_my_projects
      my_projects = []
      Project.all.each do | project|
        if project.teammates != nil
          if project.teammates.include? current_user.id
            my_projects << project
          end
        end
      end
      my_projects << Project.where(user_id: current_user.id)
      return my_projects.flatten
    end

    private

    def user_params
      params.require(:user).permit(:photo, :username, :name, :email, :password)
    end
   
end


