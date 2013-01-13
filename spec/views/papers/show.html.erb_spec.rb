require 'spec_helper'

describe "papers/show" do
  before(:each) do
    @paper = assign(:paper, stub_model(Paper,
      :title => "Title",
      :abstract => "MyText",
      :citation => "Citation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Citation/)
  end
end
