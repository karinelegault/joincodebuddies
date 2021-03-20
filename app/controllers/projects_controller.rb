class ProjectsController < ApplicationController

    def show
        @project = Project.all
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        @project.user = current_user
        if @project.save
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
        params.require(:project).permit(:name, :description)
    end
end
