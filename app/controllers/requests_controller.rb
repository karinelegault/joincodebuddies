class RequestsController < ApplicationController

  def join_request
    @user = current_user
    @project = Project.find(params[:project_id])
    @request = Request.new
    @request.project_id = params[:project_id]
    @request.user_id = current_user.id
    @request.status = "pending"
    if request_exist? == true
      # raise
      flash.now[:notice] = "You've already sent a request"
      render "projects/show"
    else
      @request.save!
    end
    render "projects/confirmation"
  end

  def outgoing_requests
    @requests = Request.where(user_id: current_user.id)
  end

  def incoming_requests
    projects = Project.where(user_id: current_user.id)
    my_requests = projects.map { |project| project.requests }
    @requests = my_requests.flatten
  end

  def accept_requests
    @request = Request.find(params[:id])
    @request.status = "accepted"
    @project = Project.find(@request.project_id)
    @user = User.find(@request.user_id)
    @project.teammates << @user.id
    @project.save
    @request.save
    redirect_to user_dashboard_requests_path
  end

  def deny_requests
    @request = Request.find(params[:id])
    @request.status = "denied"
    @request.save
    redirect_to user_dashboard_requests_path
  end

  def components
    @user = current_user
  end

  def request_exist?
    array = Request.where(project_id: @project.id, user_id: current_user.id)
    if array.length > 0
      return true
    end
  end

  def user_dashboard_requests
    @user = current_user
    projects = Project.where(user_id: current_user.id)
    my_requests = projects.map { |project| project.requests }
    @incoming_requests = my_requests.flatten
    @outgoing_requests = Request.where(user_id: current_user.id)
    @my_projects = find_my_projects
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

  def request_params
    params.require(:request).permit(:project_id, :user_id, :status)
  end

end
