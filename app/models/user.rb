class User < ApplicationRecord
 validates :username, :uniqueness => true
 has_secure_password
 has_many :user_cities
 has_many :cities, through: :user_cities
end
