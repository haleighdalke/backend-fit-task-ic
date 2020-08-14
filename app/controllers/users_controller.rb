class UsersController < ApplicationController
    def new
        user = User.new
    end

    def create 
        user = User.new(user_params)
        render json: UserSerializer.new(user)
    end

    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def edit
        user = User.find(params[:id])
    end

    def update 
        user = User.find(params[:id])
        user = User.update(user_params)
    end

    def destroy 
        user = User.find(params[:id]).destroy
    end 

    private
    def user_params
        params.require(:user).permit(:name, :password, :age, :location)
    end
end