require 'spec_helper'

describe "papers/edit" do
  before(:each) do
    @paper = assign(:paper, stub_model(Paper,
      :title => "MyString",
      :abstract => "MyText",
      :citation => "MyString"
    ))
  end

  it "renders the edit paper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => papers_path(@paper), :method => "post" do
      assert_select "input#paper_title", :name => "paper[title]"
      assert_select "textarea#paper_abstract", :name => "paper[abstract]"
      assert_select "input#paper_citation", :name => "paper[citation]"
    end
  end
end
