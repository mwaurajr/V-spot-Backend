class ApplicationController < ActionController::API

    include ActionController::Cookies
     
    def authorize
        @current_user = User.find_by(id: session[:user_id])
    
        render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
    end

  def is_admin
    return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user.admin
  end

    

    # skip_before_action :verify_authenticity_token
    include ActionController::Cookies



end
