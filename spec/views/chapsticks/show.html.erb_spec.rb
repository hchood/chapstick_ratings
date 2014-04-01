require 'spec_helper'

describe "chapsticks/show" do
  before(:each) do
    @chapstick = assign(:chapstick, stub_model(Chapstick,
      :brand => "Brand",
      :flavor => "Flavor"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Brand/)
    rendered.should match(/Flavor/)
  end
end
