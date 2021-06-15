class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  def start_time
  self.date
  end
  
end
