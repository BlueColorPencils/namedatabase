class User < ActiveRecord::Base
  has_many :favorite_names # just the 'relationships'
  has_many :favorites, through: :favorite_names, source: :name # the actual names a user favorites
end



def self.find_or_create_from_omniauth(auth_hash)
  # Find or create a user
  #user = User.where(uid: auth_hash["uid"]).where(provider: auth_hash["provider"]).first
  user = self.find_by(uid: auth_hash["uid"], provider: auth_hash["provider"])
  # user = //something else here//
  if !user.nil?
  #   return user that was found
    return user
  else
  #   no user found, do something here
    user = User.new
    user.uid = auth_hash["uid"]
    user.provider = auth_hash["provider"]
    user.name = auth_hash["info"]["name"]
    user.image = auth_hash["info"]["image"]
    user.url = auth_hash["info"]["urls"]["spotify"]
    if user.save
      return user
    else
      return nil
    end
  end
end
