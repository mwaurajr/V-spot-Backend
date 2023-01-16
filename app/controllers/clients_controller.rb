class ClientsController < ApplicationController

    #   skip_before_action :is_doc, only: [:create]
    #   skip_before_action :authorize, only: [:create]


  def index
    render json: Client.all, status: :ok
  end

  def show
    client = Client.find(params[:id])
    render json: client, status: :ok
  end

  def create
        client = Client.create(user_params)
        session[:user_id] = client.id
        if client
        render json: client, status: :created
        else
            render json: {error: "Invalid details"}, status: :unprocessable_entity
        end
    end


  def destroy
    client = Client.find(params[:id])
    client.destroy
    head :no_content
  end

  private

  def user_params
    params.require(:client).permit(:name, :username, :email, :age, :address, :phoneNumber, :password)
  end

end
