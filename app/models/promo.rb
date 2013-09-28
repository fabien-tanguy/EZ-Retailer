class Promo < ActiveRecord::Base
  attr_accessible :description
  
  validates :description, length: { minimum:  10 }
  
  has_and_belongs_to_many :photos
end