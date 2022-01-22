class UsersController < ApplicationController

    before_action :find_user_by_id, only: [:show]
    skip_before_action :authorized, only: [:login, :create]

    def index
        @users = User.all

        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            render json: @user
        else
            render json: @user.errors.full_messages
        end
    end

    def login
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
            @token = JWT.encode({ user_id: @user.id}, Rails.application.secrets.secret_key_base[0])
            render json: { user: @user, token: @token }
        else 
            render json: { message: "Invalid email or password" }
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password)
    end

    def find_user_by_id
        @user = User.find(params[:id])
    end
end
