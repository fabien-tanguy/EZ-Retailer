require 'spec_helper'

describe "pages/show" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :titre_menu => "Titre Menu",
      :titre => "Titre",
      :photo => "Photo",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titre Menu/)
    rendered.should match(/Titre/)
    rendered.should match(/Photo/)
    rendered.should match(/MyText/)
  end
end
