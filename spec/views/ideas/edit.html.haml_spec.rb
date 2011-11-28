require 'spec_helper'

describe "ideas/edit.html.haml" do
  before(:each) do
    @idea = assign(:idea, stub_model(Idea,
      :idea => "MyString"
    ))
  end

  it "renders the edit idea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ideas_path(@idea), :method => "post" do
      assert_select "input#idea_idea", :name => "idea[idea]"
    end
  end
end
