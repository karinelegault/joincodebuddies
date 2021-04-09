class PagesController < ApplicationController
  def home
    @user = current_user
    @projects = Project.all
  end
end
