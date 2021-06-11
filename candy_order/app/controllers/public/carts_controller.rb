class Public::CartsController < ApplicationController
  before_action :setup_cart_product!, only:  %i[add_product update_product delete_product ]
  before_action :authenticate_shop!

  def show
    @cart_products = current_cart.cart_products.includes([:product]) #includesはN+1問題
  end

  def add_product
    @cart_product ||= current_cart.cart_products.build(product_id: params[:product_id])
    @cart_product.quantity = params[:quantity].to_i
    if @cart_product.save
        flash[:success] = "追加しました"
        redirect_to cart_path(current_cart)
    else
        flash[:danger] = "追加に失敗しました"
        redirect_to request.referer
    end
  end
  
  def update_product
    if @cart_product.update(quantity: params[:quantity].to_i)
      flash[:success] = "更新しました"
    else
      flash[:danger] = "更新に失敗しました"
    end
      redirect_to request.referer
  end
  
  def delete_product
   if @cart_product.destroy
      flash[:danger] = "削除しました"
   else
      flash[:alert] = "削除に失敗しました"
   end
      redirect_to cart_path(current_cart)
  end
    

  private

  def setup_cart_product!
    @cart_product = current_cart.cart_products.find_by(product_id: params[:product_id])
  end
end
