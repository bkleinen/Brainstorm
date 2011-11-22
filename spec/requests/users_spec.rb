require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "should return 302 if not logged in" do
      get users_path
      response.status.should be(302)
    end
  end
end
