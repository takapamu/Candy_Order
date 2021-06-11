class OrderMailer < ApplicationMailer

  def send_when_admin_reply(shop, order) #メソッドに対して引数を設定
    @shop = shop
    @cart_products = @shop.cart.cart_products
    mail to: shop.email, subject: 'ご注文内容'
  end

end
