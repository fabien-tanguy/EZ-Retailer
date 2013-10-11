require 'spec_helper'

describe "produits/index" do
  before(:each) do
    assign(:produits, [
      stub_model(Produit,
        :titre => "Titre",
        :description => "MyText",
        :prix => "Prix"
      ),
      stub_model(Produit,
        :titre => "Titre",
        :description => "MyText",
        :prix => "Prix"
      )
    ])
  end

  it "renders a list of produits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Prix".to_s, :count => 2
  end
end
