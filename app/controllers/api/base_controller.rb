class Api::BaseController < ApplicationController
  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  protected

  def render_error(errors, status = :unprocessable_entity)
    render json: { error: errors }, status: status
  end
end
