class UsersController < ApplicationController

 def index
  byebug
 end

 def create
  user = User.create!(user_params)
  payload = { user_id: user.id }
  token = JWT.encode(payload, 'tweak', 'HS256')
  render json: {token: token}
 end 

 def show
 end

 def update
 end 


 private 
  def user_params
    params.require(:user).permit(:full_name, :username, :password)
  end

end
