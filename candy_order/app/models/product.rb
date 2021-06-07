class Product < ApplicationRecord
  
  has_many :cart_products, dependent: :destroy
  has_many :order
  
  attachment :image
end
