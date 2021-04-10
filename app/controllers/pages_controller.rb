class PagesController < ApplicationController
  def home
    @user = current_user
    @projects = Project.all
    # finished_projects
    @finished_projects = Project.where(status: "finished")
  end

  def finished_projects
  end

  
end
