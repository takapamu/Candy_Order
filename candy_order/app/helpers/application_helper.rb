module ApplicationHelper
  
  def tax_price(price)
    (price * 1.1).round
  end

  def tax_subtotal(price,quantity)
    (price * quantity * 1.1 ).round
  end

  def tax_total_price(price)
    array = []
    price.each do |cart_product|
      array << cart_product.product.product_price * 1.1 * cart_product.quantity
    end
    array.sum.round
  end
  
  def unchecked_notifications
    @notifications = current_shop.passive_notifications.where(checked: false)
  end
  
end
