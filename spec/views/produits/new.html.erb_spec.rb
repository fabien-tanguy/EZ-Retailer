require 'spec_helper'

describe "produits/new" do
  before(:each) do
    assign(:produit, stub_model(Produit,
      :titre => "MyString",
      :description => "MyText",
      :prix => "MyString"
    ).as_new_record)
  end

  it "renders new produit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produits_path, "post" do
      assert_select "input#produit_titre[name=?]", "produit[titre]"
      assert_select "textarea#produit_description[name=?]", "produit[description]"
      assert_select "input#produit_prix[name=?]", "produit[prix]"
    end
  end
end
