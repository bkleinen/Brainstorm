require 'spec_helper'

describe "users/new.html.haml" do
  before(:each) do
    assign(:user, FactoryGirl.build(:user))
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_login", :name => "user[login]"
     end
  end
end
