class Cart < ApplicationRecord
  
  has_many :cart_products,dependent: :destroy
  
  accepts_nested_attributes_for :cart_products, allow_destroy: true #子モデルを保存
  
  validates :quantity, presence: true
end
