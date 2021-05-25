class PagesController < ApplicationController
  def home
    @user = current_user
    @projects = Project.all
    @users = User.all
    @finished_projects = Project.where(status: "finished")
    name_array = @user.name.split
    @first_name = name_array[0]
  end



  
end
