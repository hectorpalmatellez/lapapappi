class Api::UsersController < Api::BaseController
  after_filter :cors_set_access_control_headers
  protect_from_forgery except: :create

  def create
    user = User.create(user_params)
    render_error(user.errors) if user.invalid?
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
