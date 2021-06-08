class Public::OrdersController < ApplicationController

  def show
    @order = Order.new(order_params)
    @shop = current_shop
  end

  def confirm
    @order = Order.new(order_params)
    @shop = current_shop
  end

private
  def order_params
    params.permit(:amount,:quantity,:product_id)
  end
end
