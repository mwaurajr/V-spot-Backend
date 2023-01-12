class ClientsController < ApplicationController
     #rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    #rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def index
        client = Client.all
        render json: client, status: :ok 
    end

    def create
        client = Client.create!(client_params)
        session[:user_id] = client.id
        if client
        render json: client, status: :created
        else
            render json: {error: "Invalid details"}, status: :unprocessable_entity
        end
    end

    def show
        client = Client.find_by(id: session[:user_id])
        if client
            render json: client, status: :ok
        else 
            render json: {error: "unauthorized"}, status: :unauthorized
        end
    end

    private

    def client_params
        params.permit(:name, :username, :age, :email, :address, :phoneNumber, :password)
    end

    # def render_record_invalid(e)
    #     render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
    # end

    # def render_record_not_found(e)
    #     render json: {errors: e.record.errors.full_messages}, status: :not_found
    # end

end
