class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_one :cart, dependent: :destroy
   has_many :orders, dependent: :destroy
   has_many :favorites, dependent: :destroy
   has_many :passive_notifications, class_name: "Notification", foreign_key: "visited_id", dependent: :destroy

    validates :name, presence: true
    validates :postal_code, presence: true
    validates :address, presence: true
    validates :email, presence: true
    validates :telephone_number, presence: true

  def already_favorited?(product)
    self.favorites.exists?(product_id: product.id)
  end

end