class ShopNoticeMailer < ApplicationMailer
  
  def send_signup_email(shop)
    @shop = shop
    mail to: @shop.email ,subject: "登録が完了しました"
  end
  
end
