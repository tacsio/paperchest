require 'spec_helper'

describe "papers/new" do
  before(:each) do
    assign(:paper, stub_model(Paper,
      :title => "MyString",
      :abstract => "MyText",
      :citation => "MyString"
    ).as_new_record)
  end

  it "renders new paper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => papers_path, :method => "post" do
      assert_select "input#paper_title", :name => "paper[title]"
      assert_select "textarea#paper_abstract", :name => "paper[abstract]"
      assert_select "input#paper_citation", :name => "paper[citation]"
    end
  end
end
