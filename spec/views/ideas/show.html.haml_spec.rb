require 'spec_helper'

describe "ideas/show.html.haml" do
  before(:each) do
    @idea = assign(:idea, stub_model(Idea,
      :idea => "Idea"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Idea/)
  end
end
