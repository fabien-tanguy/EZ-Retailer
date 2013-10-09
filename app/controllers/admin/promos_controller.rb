# encoding: utf-8
class Admin::PromosController < ApplicationController
  layout 'admin'
  
  def edit 
    @title  = "Modification Promo"
    @promo  = Promo.first
    @photos = Photo.all
    @photo  = Photo.first
  end
  
  
  #PUT /promos/1
  def update
    @promo = Promo.find(params[:id])
    @photo = Photo.find(params[:photo_attached].to_i)
    
    if @promo.update_attributes(params[:promo])
      @promo.photos.clear
      @promo.photos << @photo
      flash[:notice] = "Promo bien mise à jour"
      redirect_to edit_admin_promo_path(@promo)  
    else
      @title = "Modification Promo"
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
    promo = Promo.find(params[:promo_id])
    if params[:photo_active]
      photo_activate = true
    else 
      photo_activate = false
    end    
    respond_to do |format|
      if !promo.update_attributes(:photo_active => photo_activate)
        format.js
      else 
        format.js { render :nothing => true }   
      end  
    end
  end  
   
end
