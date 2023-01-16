class SessionsController < ApplicationController

    def client_login_session
    client = Client.find_by(email: params[:email])
    if client&.authenticate(params[:password])
      session[:client_id] = client.id
      render json: client, status: :ok
    else
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

  def manager_login_session
    manager = Manager.find_by(email: params[:email])
    if manager&.authenticate(params[:password])
        session[:manager_id] = manager.id
        render json: manager, status: :ok
    else
        render json: {errors: ["Invalid username or password"]}, status: :unauthorized
    end
  end

  def client_destroy_session
    return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :client_id
    session.delete :client_id
    render json: {}, status: :no_content
  end

  def manager_destroy_session
    return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :manager_id
    session.delete :manager_id
    render json: {}, status: :no_content 
  end
end
