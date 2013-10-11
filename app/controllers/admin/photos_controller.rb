# encoding: utf-8
class Admin::PhotosController < ApplicationController

  before_filter :authenticate_admin!
  before_filter :no_param_after_destroy, only: :show 

  layout 'admin'
  
  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to admin_photo_path(@photo), flash[:notice]= 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to admin_photo_path(@photo), notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.remove_image! if @photo.image_url 
    @photo.destroy
    @photos = Photo.all


    respond_to do |format|
      flash[:notice] = "Photo bien supprimée"
      format.html
    end
  end
  
  
  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy_photo
    @photo = Photo.find(params[:id])
    @photo.remove_image! if @photo.image_url 
    @photo.destroy


    respond_to do |format|
      flash[:notice] = "Photo bien supprimée"
      format.html { redirect_to admin_photos_path}
    end
  end
  
  private 
  
  def no_param_after_destroy 
    if Photo.find_by_id(params[:id]) == nil
      redirect_to admin_photos_path
    end  
  end 
  
  
end
