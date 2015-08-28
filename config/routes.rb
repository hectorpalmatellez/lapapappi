Rails.application.routes.draw do
  namespace :api, constraints: { format: :json } do
    resources :spots
  end
end
