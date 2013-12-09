require 'spec_helper'

describe "pages/new" do
  before(:each) do
    assign(:page, stub_model(Page,
      :titre_menu => "MyString",
      :titre => "MyString",
      :photo => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pages_path, "post" do
      assert_select "input#page_titre_menu[name=?]", "page[titre_menu]"
      assert_select "input#page_titre[name=?]", "page[titre]"
      assert_select "input#page_photo[name=?]", "page[photo]"
      assert_select "textarea#page_description[name=?]", "page[description]"
    end
  end
end
