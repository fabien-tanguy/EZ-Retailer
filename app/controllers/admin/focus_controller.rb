# encoding: utf-8
class Admin::FocusController < ApplicationController
  layout 'admin'
  
  def edit 
    @title = "Modification Activité"
    @focus = Focu.first
    @photos = Photo.all
  end
  
  
  #PUT /focus/1
  def update
    @focus = Focu.find(params[:id])
    @photo = Photo.find(params[:photo_attached].to_i)
    
    if @focus.updates_attributes(params[:id])
      flash[:notice] = "Focus bien mise à jour"
      redirect_to admin_home_path  
    else
      @title = "Modification Focus"
      @photos = Photo.all 
      render "edit"  
    end    
  end    
  
  #Choose a photo to link 
  def upload_to_link_with 
    @photo = Photo.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.js
      end
    end
  end  
  
  def activate_photo
    focus = Focu.find(params[:focus_id])
    if params[:photo_active] == "false"
      photo_activate = false
    else 
      photo_activate = true
    end    
    respond_to do |format|
      if !focus.update_attributes(:photo_active => photo_activate)
        format.js
      else 
        format.js { render :nothing => true }   
      end 
    end
  end
  
end
