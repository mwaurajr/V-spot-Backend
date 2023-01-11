class ManagersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def index
        manager = Manager.all
        render json: manager, status: :ok 
    end

    def show
        manager = Manager.find_by(id: session[:manager_id])
        if manager
            render json: manager, status: :ok
        else 
            render json: {error: "unauthorized"}, status: :unauthorized
        end
    end

    def create
        manager = Manager.create!(manager_params)
        session[:manager_id] = manager.id
        render json: manager, status: :created
    end

    private

    def advocate_params
        params.permit(:name, :username, :age, :address, :phoneNumber, :email, :password, :password_confirmation)
    end

    def render_record_invalid(e)
        render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_record_not_found(e)
        render json: {errors: e.record.errors.full_messages}, status: :not_found
    end

end
