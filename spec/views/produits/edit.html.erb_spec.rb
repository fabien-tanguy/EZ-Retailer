require 'spec_helper'

describe "produits/edit" do
  before(:each) do
    @produit = assign(:produit, stub_model(Produit,
      :titre => "MyString",
      :description => "MyText",
      :prix => "MyString"
    ))
  end

  it "renders the edit produit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produit_path(@produit), "post" do
      assert_select "input#produit_titre[name=?]", "produit[titre]"
      assert_select "textarea#produit_description[name=?]", "produit[description]"
      assert_select "input#produit_prix[name=?]", "produit[prix]"
    end
  end
end
