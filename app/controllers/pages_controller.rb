class PagesController < ApplicationController
  def home
    @user = current_user
    @projects = Project.all
    @users = User.all
  end

  def finished_projects
  end

  
end
