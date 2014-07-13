class Itinerary < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction
end
