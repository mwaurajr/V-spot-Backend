class ApplicationController < ActionController::API
    # skip_before_action :verify_authenticity_token

     def encode_token(payload)
        JWT.encode(payload, 'secret')
    end
end
