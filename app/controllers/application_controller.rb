class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :title, :nav
  
  def title 
    @title ||= "Artisans du web"
  end  
  
  def nav 
    @promo = Promo.first
    @focus = Focu.first
    @produits = Produit.where(:type_of_produit => "Produit").limit(15).order("created_at DESC")
    @services = Produit.where(:type_of_produit => "Service").limit(15).order("created_at DESC")
  end  
  
  #devise
  def after_sign_in_path_for(resource)
      admin_index_path   
  end
  
  def after_sign_out_path_for(resource)
      root_path   
  end
end
