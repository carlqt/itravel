class Photo < ActiveRecord::Base
  mount_uploader :picture, PhotoUploader
  belongs_to :attraction
end
