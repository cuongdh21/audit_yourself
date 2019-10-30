class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  def index
    @order = Order.new
  end

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      @order.update(response: 'testtest')
      render :pass
    else
      render :new
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.save
      @order.update(order_params.merge(response: 'testtestupdate'))
      render :pass
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:tracking_id1, :tracking_id2, :tracking_id3, :passed)
    end
end
