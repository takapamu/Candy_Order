class Event < ApplicationRecord
  
  validates :title, presence: true,length: { minimum: 1, maximum: 20 }
  validates :content, presence: true,length: { minimum: 1, maximum: 100 }
  validates :start_time, presence: true

end
