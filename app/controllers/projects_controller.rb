class ProjectsController < ApplicationController
    def index
      @finished_projects = Project.where(status: "finished")
      @user = current_user
        if params[:q].present?

            @projects = Project.search_by_name(params[:q])
            # raise
        else
            @projects = Project.all
        end
    end

    def show
      @user = current_user
      @project = Project.find(params[:id])
      @chatroom = @project.chatroom
      @project_teammates_ids = @project.teammates
      @project_teammates_ids = @project_teammates_ids.uniq
    end

    def new
      @user = current_user
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      @project.user = current_user
      @project.status = "idea"
      @project.teammates = []
      unless @project.teammates.include? @project.user.id
        @project.teammates << @project.user.id
      end
      @chatroom = Chatroom.new
      @chatroom.user = current_user
      @chatroom.project = @project
      # @chatroom = Chatroom.new
      if @project.save
        @chatroom.save
        redirect_to project_path(@project)
      else
        render :new
      end
    end



    def edit
      @project = Project.find(params[:id])
    end

    def update
      @project = Project.find(params[:id])
      @project.update(project_params)
      redirect_to project_path(@project)
    end

    def confirmation
    end

    def finished_status
      @project = Project.find(params[:id])
      @project.status = "finished"
      @project.save
    end

    def idea_status
      @project = Project.find(params[:id])
      @project.status = "idea"
      @project.save
    end

    private

    def project_params
      params.require(:project).permit(:name, :description, :chatroom_link, :photo, :status, :teammates)
    end
end
