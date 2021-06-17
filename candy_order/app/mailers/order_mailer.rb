class OrderMailer < ApplicationMailer

  def send_when_admin_reply(shop, order) #メソッドに対して引数を設定
    @shop = shop
    @cart_products = @shop.cart.cart_products
    mail to: shop.email, subject: 'ご注文内容'
  end
  
  def send_when_admin_received(shop, order)
    @shop = shop
    @cart_products = @shop.cart.cart_products
    mail to: "takapamukyary0129@gmail.com", subject: "店舗からから注文があります。"
  end


end
