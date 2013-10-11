class ProduitsController < ApplicationController
  # GET /produits
  # GET /produits.json
  def index
    @produits = Produit.all

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

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produit }
    end
  end

  # GET /produits/1/edit
  def edit
    @produit = Produit.find(params[:id])
  end

  # POST /produits
  # POST /produits.json
  def create
    @produit = Produit.new(params[:produit])

    respond_to do |format|
      if @produit.save
        format.html { redirect_to @produit, notice: 'Produit was successfully created.' }
        format.json { render json: @produit, status: :created, location: @produit }
      else
        format.html { render action: "new" }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /produits/1
  # PUT /produits/1.json
  def update
    @produit = Produit.find(params[:id])

    respond_to do |format|
      if @produit.update_attributes(params[:produit])
        format.html { redirect_to @produit, notice: 'Produit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produits/1
  # DELETE /produits/1.json
  def destroy
    @produit = Produit.find(params[:id])
    @produit.destroy

    respond_to do |format|
      format.html { redirect_to produits_url }
      format.json { head :no_content }
    end
  end
end
