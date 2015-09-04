Rails.application.routes.draw do
  devise_for :users

  namespace :api, constraints: { format: :json } do
    resources :spots
  end
end
