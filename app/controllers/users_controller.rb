class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        params
        @user = User.find(params[:id])
    end
end
