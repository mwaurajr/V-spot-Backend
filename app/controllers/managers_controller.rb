class ManagersController < ApplicationController
#   skip_before_action :is_doc, only: [:create]
#   skip_before_action :authorize, only: [:create]


  def index
    render json: Manager.all, status: :ok
  end

  def show
    manager = Manager.find(params[:id])
    render json: manager, status: :ok
  end

  def create
        manager = Manager.create(user_params)
        session[:user_id] = manager.id
        if manager
        render json: manager, status: :created
        else
            render json: {error: "Invalid details"}, status: :unprocessable_entity
        end
    end


  def destroy
    manager = Manager.find(params[:id])
    manager.destroy
    head :no_content
  end

  private

  def user_params
    params.require(:manager).permit(:name, :username, :email, :age, :address, :phoneNumber, :password)
  end

end
