class Api::V1::AuthenticatedController < ActionController::Base
    before_action :authenticate

    attr_reader :current_api_token, :current_user

    def authenticate
        authenticate_with_user_token || handle_bad_authentication
    end

    def authenticate_with_user_token 
        authenticate_with_http_token do |token, options|
            @current_api_token = ApiToken.where(active: true).find_by(token: token)
            @current_user = @current_api_token&.user
        end
    end

    def handle_bad_authentication 
        render json: {message: "Invalid credentials"}, status: :unauthorized
    end
end
