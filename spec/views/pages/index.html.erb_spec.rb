require 'spec_helper'

describe "pages/index" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :titre_menu => "Titre Menu",
        :titre => "Titre",
        :photo => "Photo",
        :description => "MyText"
      ),
      stub_model(Page,
        :titre_menu => "Titre Menu",
        :titre => "Titre",
        :photo => "Photo",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titre Menu".to_s, :count => 2
    assert_select "tr>td", :text => "Titre".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
