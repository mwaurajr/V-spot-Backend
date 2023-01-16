class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user
        else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end
    
    def create_admin
        admin = Admin.find_by(email: params[:email])
        if admin&.authenticate(params[:password])
        session[:admin_id] = admin.id
        render json: admin
        else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    def destroy_admin
        session.delete :admin_id
        head :no_content
    end
end
