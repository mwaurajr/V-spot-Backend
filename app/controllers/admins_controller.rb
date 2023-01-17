class AdminsController < ApplicationController
#   skip_before_action :authorize
#   skip_before_action :is_admin
  def index
    render json: Admin.all, status: :ok
  end
  def show
    admin = Admin.find(params[:id])
    render json: admin, status: :ok
  end
end
