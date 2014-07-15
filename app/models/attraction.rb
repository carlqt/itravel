# == Schema Information
#
# Table name: attractions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  country_id  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Attraction < ActiveRecord::Base
  belongs_to :country
  has_many :users, through: :itineraries
  has_many :photos

  validates :name, :description, presence: true
  accepts_nested_attributes_for :photos
end
