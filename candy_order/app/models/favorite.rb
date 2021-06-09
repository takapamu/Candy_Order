class Favorite < ApplicationRecord
  belongs_to :shop
  belongs_to :product
  validates_uniqueness_of :product_id, scope: :shop_id
end
