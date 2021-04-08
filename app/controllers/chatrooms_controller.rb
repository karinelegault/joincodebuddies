class ChatroomsController < ApplicationController
    def show
      @user = current_user
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
    end
end
