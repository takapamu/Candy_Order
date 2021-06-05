class Product < ApplicationRecord
  has_many :order_products
  has_many :carts

  attachment :image
end
