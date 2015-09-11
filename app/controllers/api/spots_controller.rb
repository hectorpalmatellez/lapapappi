class Api::SpotsController < Api::BaseController
  after_filter :cors_set_access_control_headers

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def create
    @spot = Spot.create(spot_params)
    render_error(spot.errors) if @spot.invalid?
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :nickname, :description, address_attributes: [:street, :number])
  end
end
