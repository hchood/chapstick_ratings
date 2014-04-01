require 'spec_helper'

describe "chapsticks/index" do
  before(:each) do
    assign(:chapsticks, [
      stub_model(Chapstick,
        :brand => "Brand",
        :flavor => "Flavor"
      ),
      stub_model(Chapstick,
        :brand => "Brand",
        :flavor => "Flavor"
      )
    ])
  end

  it "renders a list of chapsticks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Flavor".to_s, :count => 2
  end
end
