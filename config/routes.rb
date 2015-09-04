Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  namespace :api, constraints: { format: :json } do
    resources :spots
  end
end
