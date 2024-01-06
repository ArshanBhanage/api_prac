require 'sidekiq/web'  

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'home/index'
    end
  end

  get 'home/index'

  devise_for :users
  
  mount Sidekiq::Web, at: "/sidekiq"

  # authenticate :user, -> (u) {u.admim?} do
     
  # end

  root 'home#index'
    
end
