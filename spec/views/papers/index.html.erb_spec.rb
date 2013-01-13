require 'spec_helper'

describe "papers/index" do
  before(:each) do
    assign(:papers, [
      stub_model(Paper,
        :title => "Title",
        :abstract => "MyText",
        :citation => "Citation"
      ),
      stub_model(Paper,
        :title => "Title",
        :abstract => "MyText",
        :citation => "Citation"
      )
    ])
  end

  it "renders a list of papers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Citation".to_s, :count => 2
  end
end
