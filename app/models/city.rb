class City < ApplicationRecord
 validates :name, :country, :presence => true
 has_many :user_cities

 def method_name
  
 end
end
