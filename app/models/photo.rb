class Photo < ActiveRecord::Base
  attr_accessible :nom, :image
  
  validates :image, :presence => true
  
  mount_uploader :image, ImageUploader
end