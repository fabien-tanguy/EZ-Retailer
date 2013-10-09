class Promo < ActiveRecord::Base
  attr_accessible :description, :photo_active, :active, :title

  validates :title, length: { minimum:  5 }  
  validates :description, length: { minimum:  10 }
  
  has_and_belongs_to_many :photos, uniq: true
end