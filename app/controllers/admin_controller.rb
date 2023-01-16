class AdminController < ApplicationController

    def index
      admins = Admin.all
      render json:  admins
    end
  
    def create
      admin = Admin.create!(user_params)
      session[:admin_id] = admin.id
      render json: admin, status: :created
    end
  
    def show
      current_user = Admin.find(session[:admin_id])
      render json: current_user
    end
  
    private
  
    def admin_params
      params.permit(:email, :password, :first_name, :last_name, :role)
    end
end
