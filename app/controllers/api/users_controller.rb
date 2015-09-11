class Api::UsersController < ApplicationController
  after_filter :cors_set_access_control_headers
  protect_from_forgery except: :create

  def create
    user = User.create(user_params)
    render json: { error: user.errors }, status: :unprocessable_entity if user.errors.present?
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
