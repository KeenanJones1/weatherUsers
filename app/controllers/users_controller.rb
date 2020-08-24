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
  
  byebug
 end

 def update
 end 


 private 
  def user_params
    #     params.require(:habit).permit(:title, :difficulty, :note, :type, :user_id)
    params.require(:user).permit(:full_name, :username, :password)
  end

end
