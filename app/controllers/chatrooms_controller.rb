class ChatroomsController < ApplicationController
    def show
      @user = current_user
      @chatroom = Chatroom.find(params[:id])
      @message = Message.new
      @project_teammates_ids = @chatroom.project.teammates
      @project_teammates_ids = @project_teammates_ids.uniq
    end
end
