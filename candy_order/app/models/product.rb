class Product < ApplicationRecord

  has_many :cart_products, dependent: :destroy
  has_many :order_details
  belongs_to :genre
  has_many :favorites, dependent: :destroy
  has_many :notifications, dependent: :destroy
  
  validates :product_name, presence: true,length: { minimum: 1, maximum: 20 }
  validates :product_introduction, presence: true,length: { minimum: 1, maximum: 100 }
  validates :product_company, presence: true
  validates :product_price,numericality: {greater_than: 0}
  validates :is_active, inclusion: { in: [true, false] }

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
