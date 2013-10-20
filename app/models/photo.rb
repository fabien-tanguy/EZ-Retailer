class Photo < ActiveRecord::Base
  attr_accessible :nom, :image

  #carrierwave
   mount_uploader :image, ImageUploader
  
  #validation
  validates :image, :presence => true
  
  
  #associations 
  has_and_belongs_to_many :promos, uniq: true
  has_and_belongs_to_many :focus, uniq: true
  has_and_belongs_to_many :produits, uniq: true
    
end