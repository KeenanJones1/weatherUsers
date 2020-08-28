class UserCitiesController < ApplicationController
  def index
   byebug
  end

  def create
   authorization_object = Authorization.new(request)
   current_user = authorization_object.current_user
   user = User.find(current_user)
   city = City.create(city_params)
   user_city = UserCity.create(user: user, city: city)
   render json: {message: "City saved to your User"}
   
  end

  private
  def city_params
   params.require(:user_city).permit(:name, :country, :key)
 end

end
