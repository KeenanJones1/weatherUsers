class UsersController < ApplicationController

 def create
  user = User.create!(user_params)
  payload = { user_id: user.id }
  token = JWT.encode(payload, 'tweak', 'HS256')
  render json: {token: token, username: user.username, full_name: user.full_name, cities: user.cities }
 end 



 private 
  def user_params
    params.require(:user).permit(:full_name, :username, :password)
  end

end
