class Produit < ActiveRecord::Base
  attr_accessible :description, :prix, :titre, :photo_active
  
  
  validates :description, length: { minimum:  10 }
  validates :titre, length: { minimum: 3 }

  has_and_belongs_to_many :photos, uniq: true
  
end
