class Public::CartsController < ApplicationController

  before_action :setup_cart_product!, only:  %i[add_product update_product delete_product ]
  before_action :authenticate_shop!

  def show
    @cart_products = current_cart.cart_products.includes([:product]) #includesはN+1問題
  end


  def add_product
    params[:cart_products].each do |cart_product|
    tmp = current_cart.cart_products.find_by(product_id: cart_product[:product_id])
    if tmp.blank?
      current_cart.cart_products.create(product_id: cart_product[:product_id],quantity: cart_product[:quantity])
    else
      if nil != cart_product[:quantity]
        if !cart_product[:quantity].is_a?(Integer) #文字列だったら数値に
        cart_product[:quantity] =  cart_product[:quantity].to_i
        end
        if !tmp.quantity.is_a?(Integer)
        tmp.quantity = tmp.quantity.to_i
        end
      @new_quantity = cart_product[:quantity] + tmp.quantity
      tmp.update_attribute(:quantity, @new_quantity)
      end
    end
    end

    array = []
    params[:cart_products].each do |cart_product|
      quantity = cart_product["quantity"].to_i
      if quantity > 0
        array << cart_product["quantity"]
      end
    end
    quantity_sum = array.sum.to_i

    if quantity_sum > 0
       flash[:success] = "追加しました"
       redirect_to cart_path(current_cart)
    else
       flash[:danger] = "追加に失敗しました( 商品を選択して下さい。)"
       redirect_to products_path
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

  def destroy_all
    if CartProduct.where(cart_id: current_cart.id).destroy_all
       flash[:danger] = "削除しました"
    else
       flash[:alert] = "更新に失敗しました"
    end
       redirect_to request.referer
  end


  private

  def setup_cart_product!
    @cart_product = current_cart.cart_products.find_by(product_id: params[:product_id])
  end

  def cart_params
    params.require(:cart_products).permit([:product_id, :quantity])
  end

end
