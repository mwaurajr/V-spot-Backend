class ClientsController < ApplicationController
     #before_action :authorize, only: [:show]

    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response

    def index
        client = Client.all 
        render json: client, except: [:created_at, :updated_at], status: :ok
    end


    def create
        client = Client.create!(client_params)
        session[:client_id] = client.id
        render json: client, status: :created
    end

    def show
        client = Client.find_by(id: session[:client_id])
        if client
            render json: client, status: :ok
        else 
            render json: {errors: "Not authorized"}, status: :unauthorized unless session.include? :client_id
        end
    end


    private

    def client_params
        params.permit(:username, :email, :password)
    end

    def render_record_invalid_response(e)
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end
end
