class Notification < ApplicationRecord
  
  belongs_to :product, optional: true
  belongs_to :visited, class_name: 'Shop', foreign_key: 'visited_id', optional: true
  
end
