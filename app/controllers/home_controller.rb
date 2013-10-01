# encoding: utf-8
class HomeController < ApplicationController
  
  def index 
    @title = "Site mobile et référencement géolocalisé | Artisans du web"
    @promo = Promo.first
    @focus = Focu.first
  end  
  
  
  def promo
    @title = "Promos"
    @promo = Promo.first
  end

  def focus
    @title = "Focus"
    @focus = Focu.first
  end
  
  def activities
    @title = "Notre activité"    
    @activity = Activity.first
  end  

  def map 
    @title = "Plan & horaires"
    @image_map = Photo.find(5)
  end
  
  def contact
    @title = "Contact"    
  end  
  
end
