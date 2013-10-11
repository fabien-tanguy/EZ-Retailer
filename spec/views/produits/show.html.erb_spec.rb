require 'spec_helper'

describe "produits/show" do
  before(:each) do
    @produit = assign(:produit, stub_model(Produit,
      :titre => "Titre",
      :description => "MyText",
      :prix => "Prix"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titre/)
    rendered.should match(/MyText/)
    rendered.should match(/Prix/)
  end
end
