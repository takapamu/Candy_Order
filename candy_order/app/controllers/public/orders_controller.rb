class Public::OrdersController < ApplicationController

  def index
    @shop = current_shop
    @orders = @shop.orders
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end

  def confirm
    @order = Order.new(order_params)
    @shop = current_shop
    @cart_products = @shop.cart.cart_products #カートにある商品を持ってくる
    if @cart_products.empty?
       flash[:danger] = "商品がありません"
       redirect_to request.referer
     return
    end
  end

  def create
    @shop = current_shop
    @order = Order.new(order_params)
    @order.shop_id = current_shop.id
    @order.save
    OrderMailer.send_when_admin_reply(@shop,@order).deliver
    OrderMailer.send_when_admin_received(@shop,@order).deliver
    @cart_products = @shop.cart.cart_products
    @cart_products.each do |cart_product|
     order_detail = OrderDetail.new
     order_detail.product_id = cart_product.product_id
     order_detail.order_id = @order.id
     order_detail.quantity = cart_product.quantity
     order_detail.save!
     cart_product.destroy
    end
     redirect_to thanks_path
  end

private

   def order_params
   params.permit(:amount,:quantity,:product_id)
   end

end
