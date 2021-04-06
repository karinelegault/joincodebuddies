class RequestsController < ApplicationController

    def join_request
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
    end

    def deny_requests
        @request = Request.find(params[:id])
        @request.status = "denied"
    end

    def components
    end

    def request_exist?
      array = Request.where(project_id: @project.id, user_id: current_user.id)
      if array.length > 0
        return true
      end
    end

    def user_dashboard_requests
      projects = Project.where(user_id: current_user.id)
      my_requests = projects.map { |project| project.requests }
      @incoming_requests = my_requests.flatten
      @outgoing_requests = Request.where(user_id: current_user.id)
    end

    private

    def request_params
        params.require(:request).permit(:project_id, :user_id, :status)
    end
end
