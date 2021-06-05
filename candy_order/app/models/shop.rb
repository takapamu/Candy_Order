class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :orders
         has_many :cart_products
         
    validates :name, presence: true
    validates :postal_code, presence: true
    validates :address, presence: true
    validates :email, presence: true
    validates :telephone_number, presence: true
end
