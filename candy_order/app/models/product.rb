class Product < ApplicationRecord
  belongs_to :order_product
  belongs_to :cart

  attachment :image
end
