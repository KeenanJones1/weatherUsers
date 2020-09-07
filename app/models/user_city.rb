class UserCity < ApplicationRecord
 belongs_to :user  
 belongs_to :city
 # make sure city name and city key are unqiue and only allowed to add 4 cities.
end
