class ShippersController < ApplicationController
  before_action :set_shipper, only: [:show, :edit, :update, :destroy]

  # GET /shippers
  def index
    @shipper = Shipper.new
  end

  # POST /shippers
  def create
    @shipper = Shipper.new(shipper_params)
    @shipper.verify

    if @shipper.passed
      render :pass
    else
      render :fail
    end
  end

   # POST /shippers
  def update
    if @shipper.passed
      render :pass
    else
      render :fail
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipper
      @shipper = Shipper.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shipper_params
      params.require(:shipper).permit(:client_id, :client_secret, :response)
    end
end
