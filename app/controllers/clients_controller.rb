class ClientsController < ApplicationController
    #  skip_before_action :authorized, only: [:new, :create]

    def index
        client = Client.all 
        render json: client, except: [:created_at, :updated_at], status: :ok
    end

    def show
        client = Client.find_by(id: params[:id])
        if client
            render json: client, except: [:created_at, :updated_at], status: :ok
        else 
            render json: {errors: "client not found"}, status: :not_found
        end
    end

    def create
        client = Client.create(client_params)
        if client.valid?
            token = encode_token({client_id: client.id})
            render json: {client: client, token: token}, status: :created
        else
            render json: {error: "invalid username or password"}, status: :unprocessable_entity
        end
    end

    def update
        client = Client.find(params[:id])
        client.update_attributes(client_params)
        client.save
        render json: client, status: :updated
    end

    def destroy
        client = Client.find(params[:id])
        client.destroy
        head :no_content
    end


    def login
        client = Client.find_by(username: client_params[:username])
        if client && client.authenticate(client_params[:password])
             token = encode_token({client_id: client.id})
            render json: {client: client, token: token}, status: :ok
        else
            render json: {error: "invalid username or password"}, status: :unprocessable_entity
        end
    end

    private

    def client_params
        params.require(:client).permit(:name, :username, :age, :address, :phoneNumber, :email, :password, :password_confirmation)
    end
end
