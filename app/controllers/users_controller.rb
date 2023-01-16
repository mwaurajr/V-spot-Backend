class UsersController < ApplicationController

    def index
      users = User.all
      render json:  users
    end
  
    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      render json: user, status: :created
    end
  
    def show
      current_user = User.find(session[:user_id])
      render json: current_user
    end
  
    private
  
    def user_params
      params.permit(:email, :password, :first_name, :last_name, :role)
    end
  end