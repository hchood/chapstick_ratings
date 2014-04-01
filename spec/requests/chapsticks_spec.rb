require 'spec_helper'

describe "Chapsticks" do
  describe "GET /chapsticks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get chapsticks_path
      response.status.should be(200)
    end
  end
end
