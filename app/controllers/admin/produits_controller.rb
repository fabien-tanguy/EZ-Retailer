# encoding: utf-8
class Admin::ProduitsController < ApplicationController
  
  before_filter :authenticate_admin!, except: :show 
  before_filter :no_param_after_destroy, only: :show 
  
  layout 'admin', except: :show
  
  # GET /produits
  # GET /produits.json
  def index
    @produits = Produit.where(:type_of_produit => "Produit").limit(15).order("created_at DESC")
    @services = Produit.where(:type_of_produit => "Service").limit(15).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @produits }
    end
  end

  # GET /produits/1
  # GET /produits/1.json
  def show
    @produit = Produit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @produit }
    end
  end

  # GET /produits/new
  # GET /produits/new.json
  def new
    @produit = Produit.new
    @photos = Photo.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produit }
    end
  end

  # GET /produits/1/edit
  def edit
    @produit = Produit.find(params[:id])
    @photos = Photo.all
  end

  # POST /produits
  # POST /produits.json
  def create
    @produit = Produit.new(params[:produit])
    @photo = Photo.find_by_id(params[:photo_attached].to_i)
    respond_to do |format|
      if @produit.save
        @produit.photos << @photo if @photo
        format.html { redirect_to  admin_produits_path , notice: 'Le Produit ou le service a bien été créé.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /produits/1
  # PUT /produits/1.json
  def update
    @produit = Produit.find(params[:id])
    @photo = Photo.find_by_id(params[:photo_attached].to_i)
    
    respond_to do |format|
      if @produit.update_attributes(params[:produit])
        if @photo 
          @produit.photos.clear
          @produit.photos << @photo
        end  
        format.html { redirect_to admin_produits_path, notice: 'Le Produit ou le service a bien été mis à jour.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /produits/1
  # DELETE /produits/1.json
  def destroy
    @produit = Produit.find(params[:id])
    if !@produit.photos.empty?
      @produit.photos.clear
    end  
    @produit.destroy

    respond_to do |format|
      format.html { redirect_to admin_produits_url }
      format.json { head :no_content }
    end
  end
  
  ###############################
  #                             #
  #   Choose a photo to link    #
  #                             #
  ###############################
  
  
  def activate_photo
    produit = Produit.find(params[:produit_id])
    if params[:photo_active]
      photo_activate = true
    else 
      photo_activate = false
    end    
    respond_to do |format|
      if !produit.update_attributes(:photo_active => photo_activate)
        format.js
      else 
        format.js { render :nothing => true }   
      end 
    end
  end
  
  
  
  private 
  
  def no_param_after_destroy 
    if Produit.find_by_id(params[:id]) == nil
      redirect_to admin_produits_path
    end  
  end
  
  
end
