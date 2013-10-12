class Produit < ActiveRecord::Base
  attr_accessible :description, :prix, :titre, :photo_active, :type_of_produit
  
  
  validates :description, length: { minimum:  10 }
  validates :titre, length: { minimum: 3 }
  validates :type_of_produit, :presence => true
  has_and_belongs_to_many :photos, uniq: true
  
end
