class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

    def new
        user = User.new
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {error: 'unable to create user'}
        end
    end

    def login
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: token}
        else 
            render json: {error: 'incorrect user or password'}
        end
    end

    def persist
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token}
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
        params.permit(:name, :password, :age, :location)
    end
end