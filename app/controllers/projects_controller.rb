class ProjectsController < ApplicationController
    def index
      # raise
        if params[:q].present?
        
            @projects = Project.search_by_name(params[:q])
            # raise
        else
            @projects = Project.all
        end
    end

    def show
      @project = Project.find(params[:id])
    end

    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      @project.user = current_user
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

    private

    def project_params
      params.require(:project).permit(:name, :description, :chatroom_link)
    end
end
