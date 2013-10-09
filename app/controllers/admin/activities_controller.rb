# encoding: utf-8
class Admin::ActivitiesController < ApplicationController
  
  before_filter :authenticate_user!
  layout 'admin'
  def edit 
    @title = "Modification Activité"
    @activity = Activity.first
  end
  
  
  #PUT /activities/1
  def update
     
    @activity = Activity.find(params[:id])
    
    if @activity.update_attributes(params[:activity])
      flash[:notice] = "Activité bien mise à jour"
      redirect_to admin_index_path 
    else
      @title = "Modification Activité"
      render "edit"  
    end    
    
    
  end    
end
