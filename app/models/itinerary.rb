# == Schema Information
#
# Table name: itineraries
#
#  id            :integer          not null, primary key
#  user_id       :string(255)
#  attraction_id :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Itinerary < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction
end
