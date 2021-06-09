class Order < ApplicationRecord

   belongs_to :shop
   has_many :order_details
   has_many :products, through: :order_details
   
end
