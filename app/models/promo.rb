class Promo < ActiveRecord::Base
  attr_accessible :description, :photo_active, :active
  
  validates :description, length: { minimum:  10 }
  
  has_and_belongs_to_many :photos, uniq: true
end