class Public::OrdersController < ApplicationController

  def show
  end

  def confirm
    @product = Product.find(params[:product_id])
    @order = Order.new(order_params)
  end

private
  def order_params
    params.permit(:amount,:quantity,:product_id)
  end
end
