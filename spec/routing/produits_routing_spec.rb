require "spec_helper"

describe Admin::ProduitsController do
  describe "routing" do

    it "routes to #index" do
      get("/produits").should route_to("produits#index")
    end

    it "routes to #new" do
      get("/produits/new").should route_to("produits#new")
    end

    it "routes to #show" do
      get("/produits/1").should route_to("produits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/produits/1/edit").should route_to("produits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/produits").should route_to("produits#create")
    end

    it "routes to #update" do
      put("/produits/1").should route_to("produits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/produits/1").should route_to("produits#destroy", :id => "1")
    end

  end
end
