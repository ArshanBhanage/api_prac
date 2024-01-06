class HomeController < ActionController::Base
  def index
    render json: {message: "Hello"}
  end

  def my_jobs
    MyFirstJob.set(wait: 1.minute).perform_later 
  end
end
