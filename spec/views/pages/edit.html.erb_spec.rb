require 'spec_helper'

describe "pages/edit" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :titre_menu => "MyString",
      :titre => "MyString",
      :photo => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", page_path(@page), "post" do
      assert_select "input#page_titre_menu[name=?]", "page[titre_menu]"
      assert_select "input#page_titre[name=?]", "page[titre]"
      assert_select "input#page_photo[name=?]", "page[photo]"
      assert_select "textarea#page_description[name=?]", "page[description]"
    end
  end
end
