require 'spec_helper'

describe "users/show.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :email => "Email",
      :login => "Login",
      :persistence_token => "Persistence Token",
      :crypted_password => "Crypted Password",
      :password_salt => "Password Salt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Persistence Token/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Crypted Password/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password Salt/)
  end
end
