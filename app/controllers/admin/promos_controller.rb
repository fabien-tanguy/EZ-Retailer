# encoding: utf-8
class Admin::PromosController < ApplicationController
  def edit 
    @title = "Modification Promo"
    @promo = Activity.first
    @photos = Photo.all
  end
  
  
  #PUT /promos/1
  def update
     
    @promo = Promo.find(params[:id])
    
    if @promo.update_attributes(params[:id])
      flash[:notice] = "Promo bien mise à jour"
      redirect_to admin_home_path  
    else
      @title = "Modification Promo"
      @photos = Photo.all 
      render "edit"  
    end    
    
    
  end    
end
