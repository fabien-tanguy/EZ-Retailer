class Activity < ActiveRecord::Base
  attr_accessible :description
  
  validates :description, length: { minimum:  30 }
  
end