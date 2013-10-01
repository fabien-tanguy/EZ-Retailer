module Admin::HomeHelper
  
  def promo_actived? promo
    if promo.active 
      "<span class='actived'> (active)</span>"      
    else
      "<span class='non-actived'> (non active)</span>"
    end    
  end
     
     
  def focus_actived? focus
    if focus.active 
      "<span class='actived'> (actif)</span>"
    else
      "<span class='non-actived'> (non actif)</span>"      
    end    
  end
     
end
