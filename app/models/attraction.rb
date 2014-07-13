class Attraction < ActiveRecord::Base
  belongs_to :country
  has_many :users, through: :itineraries
end
