class Product < ApplicationRecord
  
  has_many :cart_products, dependent: :destroy
  has_many :order_details
  belongs_to :genre
  
  attachment :image
  
end
