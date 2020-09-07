class UserCitiesController < ApplicationController

  def create
   authorization_object = Authorization.new(request)
   current_user = authorization_object.current_user
   user = User.find(current_user)
   city = City.create(city_params)
   user_city = UserCity.create(user: user, city: city)
   render json: {message: "City saved to your User"}
   
  end

  def destroy
    authorization_object = Authorization.new(request)
    current_user = authorization_object.current_user
    user = User.find(current_user)
    user_city = UserCity.find_by(city: params['cityId'], user: user)
    if current_user
      user_city.destroy
      render json: UserSerializer.new(user).to_serialized_json
    else
      render json: {error: 'Invalid Token'}, status: 401
     end
  end


  private
  def city_params
   params.require(:user_city).permit(:name, :country, :key)
 end

end
