class Focu < ActiveRecord::Base
  attr_accessible :description, :photo_active, :active, :type_of_focus, :title
  
  validates :description, length: { minimum:  10 }
  validates :title, length: { minimum: 5 }

  has_and_belongs_to_many :photos, uniq: true
end