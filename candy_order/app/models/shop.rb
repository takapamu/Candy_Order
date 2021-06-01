class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    validates :name, presence: true
    validates :postal_code, presence: true
    validates :address, presence: true
    validates :email, presence: true
    validates :telephone_number, presence: true
end