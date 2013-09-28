# encoding: utf-8
class Admin::FocusController < ApplicationController
  def edit 
    @title = "Modification Activité"
    @focus = Focu.first
  end
  
  
  #PUT /focus/1
  def update
     
    @focus = Focu.find(params[:id])
    
    if @focus.updates_attributes(params[:id])
      flash[:notice] = "Focus bien mise à jour"
      redirect_to admin_home_path  
    else
      @title = "Modification Focus"
      render "edit"  
    end    
    
    
  end    
end
