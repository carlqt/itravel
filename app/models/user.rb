class User < ActiveRecord::Base
  has_many :attractions, through: :itineraries
  has_many :itineraries
end
