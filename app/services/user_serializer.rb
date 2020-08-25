class UserSerializer 



 def initialize(user_object)
  @user = user_object
 end

 def to_serialized_json
  @user.to_json(
   :include => {:cities => {:only => [:id, :name, :state, :country, :latitude, :longitude ]}},
   :except => [:password_digest, :updated_at, :created_at])
 end


end