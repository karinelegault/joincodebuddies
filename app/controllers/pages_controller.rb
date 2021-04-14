class PagesController < ApplicationController
  def home
    @user = current_user
    @projects = Project.all
    @users = User.all
    @finished_projects = Project.where(status: "finished")
  end



  
end
