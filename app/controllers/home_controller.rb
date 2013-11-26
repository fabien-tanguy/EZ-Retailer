# encoding: utf-8
class HomeController < ApplicationController
  
  def index 
    @title = "Vos experts en sites mobiles"
    @promo = Promo.first
    @focus = Focu.first
    @produits = Produit.where(:type_of_produit => "Produit").limit(15).order("created_at DESC")
    @services = Produit.where(:type_of_produit => "Service").limit(15).order("created_at DESC")
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
  
  def produits
    @produits = Produit.where(:type_of_produit => "Produit").limit(15).order("created_at DESC")
    @title = "Produits"
  end
  
  def services
    @services = Produit.where(:type_of_produit => "Service").limit(15).order("created_at DESC")
    @title = "Services"
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
