class Api::SpotsController < ApplicationController
  after_filter :cors_set_access_control_headers

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end
end
