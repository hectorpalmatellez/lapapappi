Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  namespace :api, constraints: { format: :json } do
    resources :spots
    resources :users, only: :create
  end
end
