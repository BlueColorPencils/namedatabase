class Name < ActiveRecord::Base
  # Favorited by users
  has_many :favorite_names # just the 'relationships'
  has_many :favorited_by, through: :favorite_names, source: :user # the actual users favoriting a name
end
