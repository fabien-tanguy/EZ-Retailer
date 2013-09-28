class Focu < ActiveRecord::Base
  attr_accessible :description
  
  validates :description, length: { minimum:  10 }
end