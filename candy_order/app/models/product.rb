class Product < ApplicationRecord
  
  has_many :cart_products, dependent: :destroy
  has_many :order_details
  belongs_to :genre
  belongs_to :user
  has_many :favorites, dependent: :destroy 
  
  default_scope -> { order(created_at: :desc) } #新着順で並べる
  
  attachment :image
  
end
