class Api::V1::HomeController < Api::V1::AuthenticatedController
  def index
    render json: {message: "Helloworld", current_api_token: current_api_token.token, current_user: current_user.email}
  end
end
