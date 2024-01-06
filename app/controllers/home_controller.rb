class HomeController < ActionController::Base
  def index
    if(User.all.empty?)
      generate_token
      token = ApiToken.first.token
    else 
      token = ApiToken.first.token
    end
    render json: {message: "Hello, please use this token as Bearer Auth to send Api requests.", token: token}
  end

  def generate_token
    User.create!(email: "admin@gmail.com", password: "demo1234", password_confirmation: "demo1234", admin: true)
    User.first.api_tokens.create
    ApiToken.first.update(token: "99484325137985936f276a12ac9d5ac5") 
  end
end
