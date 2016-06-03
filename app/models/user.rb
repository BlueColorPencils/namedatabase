class User < ActiveRecord::Base
  has_many :favorite_names # just the 'relationships'
  has_many :favorites, through: :favorite_names, source: :name # the actual names a user favorites
end
