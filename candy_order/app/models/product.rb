class Product < ApplicationRecord

  has_many :cart_products, dependent: :destroy
  has_many :order_details
  belongs_to :genre
  has_many :favorites, dependent: :destroy
  has_many :notifications, dependent: :destroy

  default_scope -> { order(created_at: :desc) } #新着順で並べる

  attachment :image

    def create_notification

        Shop.all.each do |shop| #登録している店舗に全てに通知
          notification = Notification.new(
            product_id: id,
            visited_id: shop.id,
            action: "created_at"
          )

          notification.save if notification.valid?
        end
    end

end
