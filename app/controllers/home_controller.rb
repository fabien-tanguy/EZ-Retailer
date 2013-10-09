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
    unless @promo.active
      redirect_to root_path
    end    
  end

  def focus
    @focus = Focu.first
    @title = @focus.type_of_focus
  end
  
  def activities
    @title = "Notre activité"    
    @activity = Activity.first
  end  

  def map 
    @title = "Plan & horaires"
  end
  
  def contact
    @title = "Contact"    
  end  
  
end
